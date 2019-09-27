require 'test_helper'

class StudentTest < ActiveSupport::TestCase

  test "should have the necessary required validators" do

    student = Student.new

    assert_not student.valid?

    assert_equal [:name, :lastname], student.errors.keys

    student.name = "Gerard"

    student.lastname= "Bouchard"

    assert student.valid?

  end

end