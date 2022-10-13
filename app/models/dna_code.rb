class DnaCode < ApplicationRecord
	before_save :modify_dna_string

	def modify_dna_string
		self.raw = self.raw.gsub("\n", "")
		self.raw = self.raw.gsub("\r", "")
		self.raw = self.raw.gsub(" ", "")
	end
end
