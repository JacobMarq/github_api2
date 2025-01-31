# encoding: utf-8

require_relative '../api'

module Github
  class Client::GitData < API

    require_all 'github_api2/client/git_data',
      'blobs',
      'commits',
      'references',
      'tags',
      'trees'

    # Access to GitData::Blobs API
    namespace :blobs

    # Access to GitData::Commits API
    namespace :commits

    # Access to GitData::References API
    namespace :references

    # Access to GitData::Tags API
    namespace :tags

    # Access to GitData::Tags API
    namespace :trees

  end # GitData
end # Github
