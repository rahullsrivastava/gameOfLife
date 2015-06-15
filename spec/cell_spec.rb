require 'spec_helper'

describe Cell do

  it 'should not be dead if it is alive' do
    cell = Cell.new(true)
    expect(cell.dead?).to eq(false)
  end

  it 'should return cell as dead if neighbors count is 1 and cell is initially alive' do
    cell = Cell.new(true)
    expect(cell.next_gen_alive(1)).to eq(false)
  end

  it 'should return cell as alive if neighbors count is 2 and cell is initially alive' do
    cell = Cell.new(true)
    expect(cell.next_gen_alive(2)).to eq(true)
  end

  it 'should return cell as alive if neighbors count is 3 and cell is initially alive' do
    cell = Cell.new(true)
    expect(cell.next_gen_alive(3)).to eq(true)
  end

  it 'should return cell as dead if neighbors count is 4 and cell is initially alive' do
    cell = Cell.new(true)
    expect(cell.next_gen_alive(4)).to eq(false)
  end
end