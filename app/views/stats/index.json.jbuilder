json.array!(@stats) do |stat|
  json.extract! stat, :id, :gender, :b_year, :c_status, :email, :cfc_1, :cfc_2, :cfc_3, :cfc_4, :cfc_5, :cfc_6, :cfc_7, :cfc_8, :cfc_9, :cfc_10, :cfc_11, :cfc_12, :cfc_13, :cfc_14, :svo_1, :svo_2, :svo_3, :svo_4, :svo_5, :svo_6
  json.url stat_url(stat, format: :json)
end
