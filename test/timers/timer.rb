# frozen_string_literal: true

# Released under the MIT License.
# Copyright, 2025, by Patrik Wenger.

require 'timers/timer'

describe Timers::Timer do
	let(:group) {Timers::Group.new}
	
	it "should return the block value when fired" do
		timer  = group.after(10) {:foo}
		result = timer.fire

		expect(result).to be == :foo
	end

	with '#recurring?' do
		let(:oneshot_timer) {group.after(10) {}}
		let(:recurring_timer) {group.every(10) {}}
		let(:strict_timer) {Timers::Timer.new(group, 0, :strict) {}}

		it 'returns bool' do
			expect(oneshot_timer.recurring?).to be == false
			expect(recurring_timer.recurring?).to be == true
			expect(strict_timer.recurring?).to be == true
		end
	end
end
