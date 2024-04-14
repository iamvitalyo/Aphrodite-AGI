require 'gosu'

class Cube
  attr_reader :x, :y, :z, :size

  def initialize(window, x, y, z, size)
    @window = window
    @x = x
    @y = y
    @z = z
    @size = size
    @vertices = calculate_vertices
  end

  def draw
    # Визначаємо проекцію для глибини
    fov = 70.0
    near = 0.1
    far = 100.0

    # Розрахунок матриці проекції
    projection = Matrix4.new
    projection.perspective_fov(fov, @window.width / @window.height, near, far)

    # Вигляд на куб
    view = Matrix4.LookAt(Vector3[@x, @y, 5], Vector3[@x, @y, 0], Vector3[0, 1, 0])

    # Модельна матриця - положення куба
    model = Matrix4.Translate(Vector3[@x, @y, @z])

    # Об'єднання матриць перетворення
    model_view_projection = projection * view * model

    @vertices.each_slice(4) do |face|
      transformed_points = face.map { |vertex| model_view_projection * vertex }

      # Перевірка видимості грані
      next unless visible?(transformed_points)

      # Проектування точок на екран
      screen_coords = transformed_points.map do |point|
        viewport_x = (@window.width / 2.0) + (point.x * (@window.width / 2.0))
        viewport_y = (@window.height / 2.0) - (point.y * (@window.height / 2.0))
        [viewport_x, viewport_y]
      end

      # Малювання грані
      @window.draw_quad(
        screen_coords[0].x, screen_coords[0].y, Gosu::Color::BLACK,
        screen_coords[1].x, screen_coords[1].y, Gosu::Color::BLACK,
        screen_coords[2].x, screen_coords[2].y, Gosu::Color::BLACK,
        screen_coords[3].x, screen_coords[3].y, Gosu::Color::BLACK
      )
    end
  end

  private

  def calculate_vertices
    # Координати 8 вершин куба (пів розміру)
    vertices = [
      [-@size, -@size, -@size],
      [@size, -@size, -@size],
      [@size, @size, -@size],
      [-@size, @size, -@size],
      [-@size, -@size, @size],
      [@size, -@size, @size],
      [@size, @size, @size],
      [-@size, @size, @size],
    ]

    # Перетворення в масив точок Vector3
    vertices.map { |vertex| Vector3.new(*vertex) }
  end

  # Перевірка видимості грані (передня грань)
  def visible?(points)
    points[0].z < points[1].z
  end
end

class GameWindow < Gosu::Window
  def initialize
    super(640, 480)
    @cube = Cube.new(self, 0.0, 0.0, 0.0, 1.0)
  end

  def update
  end

  def draw
     Gosu.glClearColor(0.3, 0.3, 0.3, 1.0)
     Gosu.glClear(Gosu::GL_COLOR_BUFFER_BIT)
     @cube.draw
  end
end

window = GameWindow.new
window.show
