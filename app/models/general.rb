class General < ApplicationRecord

	mount_uploader :first_image, SettingspictureUploader
	mount_uploader :second_image, SettingspictureUploader
	mount_uploader :logo, LogoUploader

end
