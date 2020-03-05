class Image
    def initialize(picture)
        @pic = picture
    end

    def picOutput
        @pic.each do |pic_row|
            puts row.join
        end
    end

    def blur(blurdistance=1)
        distance.times do
            coordinates_imgblur
        end
    end

    def coordinates_imgblur
        coordinates_imgblur=[]
        @pic.each_with_index do |pic_row, i|
            pic_row.each_with_index do |x, row_i|
                coordinates_imgblur << [i, row_i] if x == 1
            end
        end
    end
    pic1 = Image.new([
  [0, 0, 0, 0, 0, 0],
  [0, 1, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0]
])
pic1.blur(2)
pic1.output_image
        