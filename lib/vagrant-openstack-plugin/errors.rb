require "vagrant"

module VagrantPlugins
  module OpenStack
    module Errors
      class VagrantOpenStackError < Vagrant::Errors::VagrantError
        error_namespace("vagrant_openstack.errors")
      end

      class VolumeBadState < VagrantOpenStackError
        error_key(:volume_bad_state)
      end

      class CreateBadState < VagrantOpenStackError
        error_key(:create_bad_state)
      end

      class NoMatchingFlavor < VagrantOpenStackError
        error_key(:no_matching_flavor)
      end

      class NoMatchingImage < VagrantOpenStackError
        error_key(:no_matching_image)
      end

      class RsyncError < VagrantOpenStackError
        error_key(:rsync_error)
      end

      class SSHNoValidHost < VagrantOpenStackError
        error_key(:ssh_no_valid_host)
      end

      class FloatingIPNotValid < VagrantOpenStackError
        error_key(:floating_ip_not_valid)
      end
      
      class FloatingIPNotFound < VagrantOpenStackError
        error_key(:floating_ip_not_found)
      end

      class FloatingIPNotAllocated < VagrantOpenStackError
        error_key(:floating_ip_not_allocated)
      end

      class FloatingUnassignedIPNotFound < VagrantOpenStackError
        error_key(:floating_unassigned_ip_not_found)
      end

      class FloatingIPFailedAssociate < VagrantOpenStackError
        error_key(:floating_ip_failed_associate)
      end

      class FloatingUnassignedRequiresPool < VagrantOpenStackError
        error_key(:floating_unassigned_requires_pool)
      end

      class OrchestrationTemplateError < VagrantOpenStackError
        error_key(:orchestration_template_error)
      end

      class OrchestrationNoTemplateFileError < VagrantOpenStackError
        error_key(:orchestration_no_template_file_error)
      end

      class ServerNotDestroyed < VagrantOpenStackError
        error_key(:server_not_destroyed)
      end
    end
  end
end
