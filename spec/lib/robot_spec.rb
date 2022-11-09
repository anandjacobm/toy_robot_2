RSpec.describe Lib::Robot do
  subject(:robot) { described_class.new(face) }

  let(:face) { Lib::Face.new }

  context '.initialize' do
    it 'should have x, y, face set to nil' do
      expect(subject.x).to be_nil
      expect(subject.y).to be_nil
      expect(subject.face).to eq(face)
    end
  end

  context '.placed?' do
    let(:face) { instance_double(Lib::Face, name: 'NORTH') }

    it 'should return false if subject is not placed' do
      expect(subject.placed?).to be false
    end
    it 'should return true if robot is placed' do
      subject.x = 0
      subject.y = 0
      subject.face = face
      expect(subject.placed?).to be true
    end
  end

  context '.check_robot_status' do
    it 'should raise error if robot not placed' do
      expect { subject.check_robot_status }.to raise_error(CustomError)
    end
  end
end
