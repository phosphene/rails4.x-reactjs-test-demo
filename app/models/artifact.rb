class Artifact < ActiveRecord::Base
  mount_uploader :myfile, ArtifactUploader
end
