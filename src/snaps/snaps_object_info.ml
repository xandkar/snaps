type t =
  { path_to_data : string
  }

let of_riak_obj ro =
  let ro_id  = ro.Riak.Object.id in
  let bucket = ro_id.Riak.Object.ID.bucket in
  let key    = ro_id.Riak.Object.ID.key in
  let basedir = Filename.concat bucket key in
  { path_to_data = Filename.concat basedir "data"
  }

let path_to_data {path_to_data} =
  path_to_data