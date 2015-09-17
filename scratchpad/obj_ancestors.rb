all_objects = []
ObjectSpace.each_object {|o| all_objects << o }

p all_objects.class.ancestors