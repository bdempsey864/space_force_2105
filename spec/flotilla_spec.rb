require "./lib/spacecraft"
require "./lib/person"
require "./lib/flotilla"

RSpec.describe Flotilla do
  it 'exists' do
    seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})

    expect(seventh_flotilla).to be_a(Flotilla)
  end

  it 'has readable attributes' do
    seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})

    # expect(seventh_flotilla.name).to eq('Seventh Flotilla')
    expect(seventh_flotilla.personnel).to eq([])
    expect(seventh_flotilla.ships).to eq([])
  end

  it 'adds requirements' do
    daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})

    daedalus.add_requirement({astrophysics: 6})
    daedalus.add_requirement({quantum_mechanics: 3})

    requirements1 = [{astrophysics: 6}, {quantum_mechanics: 3}]

    expect(daedalus.requirements).to eq(requirements1)
  end
  
end