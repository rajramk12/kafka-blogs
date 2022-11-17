class Blog < ApplicationRecord

	# after_create_commit  :send_to_kafka

	private

	def send_to_kafka
		debugger
		Karafka.producer.produce_sync(topic: 'new_post', payload: self.to_json)
	end 
end
