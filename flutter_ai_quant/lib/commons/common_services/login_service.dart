// class WebService {
//   Dio dio = new Dio();

//   //get all Job
//   Future<List<Job>> fetchAllJobs() async {
//     final response =
//     await dio.get(Constants.BASE_URL + "api/management/jobs/list");

//     if (response.statusCode == 200) {
//       final result = response.data;
//       Iterable list = result["data"]["dataRows"];
//       return list.map((job) => Job.fromJson(job)).toList();
//     } else {
//       throw Exception("Failled to get all job");
//     }
//   }

//   //get job detail
//   Future fetchJobDetail(int id) async {
//     final response = await dio
//         .get(Constants.BASE_URL + "api/management/jobs/details?JobId=$id");
//     if (response.statusCode == 200) {
//       final result = response.data;
//       var jobDetail = result["data"];
//       //print(jobDetail);
//       return jobDetail;
//     } else {
//       throw Exception("Failled to get job detail");
//     }
//   }

//   //get access token with POST method
//   Future getAccessToken(String email, String password) async {
//     Map data = {
//       "cmnd": "",
//       "userOrEmail": email,
//       "password": password,
//       "clientId": 1,
//       "refreshToken": "",
//     };

//     try {
//       final Response response = await dio.post(
//           Constants.BASE_URL + "api/worker/users/token",
//           data: json.encode(data));
//       if (response.statusCode == 200) {
//         final result = response.data;
//         var token = result;
//         return token;
//       } else {
//         throw Exception("Failled to get access token");
//       }
//     } catch (e) {
//       print("loi la : " + e.toString());
//     }
//   }

//   //get job applied
//   Future fetchJobApplied(String token) async {
//     final response = await dio
//         .get(Constants.BASE_URL + "api/worker/users/dasboard-sumary-info",options: Options(headers: {"Authorization" : "Bearer $token"}));
//     if (response.statusCode == 200) {
//       final result = response.data;
//       var jobApplied =  result["data"];
//       //print(jobApplied);
//       return jobApplied;
//     } else {
//       throw Exception("Failled to get job detail");
//     }
//   }

//   //Fetch job apply manager
//   Future<List<ListJobApplyModel>> fetchAllJobsApplyManager(String token) async {
//     final response = await dio.get(Constants.BASE_URL + "api/worker/jobs/applied-jobs",options: Options(headers: {"Authorization" : "Bearer $token"}));
//     if (response.statusCode == 200) {
//       final result = response.data;
//       Iterable list = result["data"]["dataRows"];
//       return list.map((job) => ListJobApplyModel.fromJson(job)).toList();
//     } else {
//       throw Exception("Failled to get all job apply manager");
//     }
//   }
// }
