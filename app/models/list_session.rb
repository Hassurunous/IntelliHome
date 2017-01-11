class ListSession < ApplicationRecord
  #Initialize User List Session
  def initialize(session)
      @session = session
      @session[:list] ||= {}
  end

  #List Count
  def list_count
      if (@session[:list][:features] && @session[:list][:features] != {})
          @session[:list][:features].count
      else
          0
      end
  end

  #List Contents
  def list_contents
        features = @session[:list][:features]

        if (features && features != {})

            #Determine Quantities
            quantities = Hash[features.uniq.map {|i| [i, features.count(i)]}]

            #Get features from DB
            features_array = feature.find(features.uniq)

            #Create Qty Array
            features_new = {}
            features_array.each{
                |a| features_new[a] = {"qty" => quantities[a.id.to_s]}
            }

            #Output appended
            return features_new

        end

  end
end
