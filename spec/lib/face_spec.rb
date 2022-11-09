RSpec.describe Lib::Face do
  subject(:face) { described_class.new}

  let(:name) { 'NORTH' }

  before do
    subject.name = name
  end

  context 'face_to_left' do
    it 'should set the face which is left side to a face' do
      subject.face_to_left
      expect(subject.name).to eq('WEST')
    end
  end

  context 'face_to_right' do
    it 'should set the face which is right side to a face' do
      subject.face_to_right
      expect(subject.name).to eq('EAST')
    end
  end

  context 'valid_face?' do
    it 'should return true if face is valid' do
      expect(described_class.valid_face?('NORTH')).to be true
    end
    it 'should return false if face is invalid' do
      expect(described_class.valid_face?('NORTHERN')).to be false
    end
  end
end
