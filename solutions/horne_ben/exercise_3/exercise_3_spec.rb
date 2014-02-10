require './exercise_3_solution'

describe String do
  it 'replaces the space with %20 in a simple string' do
    a = ' '
    expect(a.substitute).to eq('%20')
  end

  it 'replaces the space at beggining or end with %20' do
    a = 'asdf '
    b = ' asdf'
    expect(a.substitute).to eq('asdf%20')
    expect(b.substitute).to eq('%20asdf')
  end

  it 'replaces the space with %20 between words' do
    a = 'a s df '
    expect(a.substitute).to eq('a%20s%20df%20')
  end
end
