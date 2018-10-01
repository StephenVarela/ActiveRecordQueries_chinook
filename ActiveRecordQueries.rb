#Part 1
#1
Album.where(artist_id: Artist.find_by(name: "Queen").id)
#2
Track.where(media_type_id: (MediaType.find_by(name: "Protected MPEG-4 video file")).id).count
#3
Genre.where(name: "Hip Hop/Rap")
#4
Track.where(genre_id: Genre.find_by(name: "Hip Hop/Rap").id).count
#5
Track.all.sum(:milliseconds)/1000/60/60.0 #in hours
#6
Track.where(media_type_id: MediaType.find_by(name:  "MPEG audio file").id).all.maximum(:unit_price)
#7
Track.where(media_type_id: MediaType.find_by(name:  "MPEG audio file").id).all.order(unit_price: :desc)[0].name
#8
Artist.order(:created_at)[1..2]
#9
Track.where(genre_id: Genre.find_by(name: "Electronica/Dance").id).order(:unit_price)[-1]
#10
Track.where(media_type_id: MediaType.find_by(name: "MPEG audio file")).where(genre_id: Genre.find_by(name: "Electronica/Dance").id)
