class DnaCode < ApplicationRecord
	belongs_to :account
	before_save :modify_dna_string
	validates_presence_of :account_id, :raw


	def modify_dna_string
		self.raw = self.raw.gsub("\n", "")
		self.raw = self.raw.gsub("\r", "")
		self.raw = self.raw.gsub(" ", "")
		self.raw = self.raw.downcase
	end
end
