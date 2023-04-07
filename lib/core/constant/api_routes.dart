/// List of api end points
class ApiRoutes {
  ApiRoutes._();

  static const getContactsList = "/contacts";
  static contactDetail(id) => "/contacts/$id";
}
