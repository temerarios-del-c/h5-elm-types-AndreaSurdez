module Helper exposing (..)

--1.0 Create a function "categoricalGrade" that given a list of grades (float) return a list of (type) "GradeStatus" (with one of the following values) (Approved | Failed | Pending) where any negative number is Pending, and any number greater than 7 is Approved


type GradeStatus
    = Approved
    | Failed
    | Pending


categoricalGrade : List Float -> List GradeStatus
categoricalGrade function =
    List.map
        (\n ->
            if n < 0.0 then
                Pending

            else if n >= 7.0 then
                Approved

            else
                Failed
        )
        function



--2.1 Create a type "AirplaneStatus" (OnTime | Boarding | Delayed | Cancelled)


type AirplaneStatus
    = OnTime
    | Boarding
    | Delayed
    | Cancelled



--2.2 Create a function "airplaneScheduleAction" that maps as the following graph:


airplaneScheduleAction : AirplaneStatus -> String
airplaneScheduleAction status =
    case status of
        OnTime ->
            "Esperar"

        Boarding ->
            "Buscar boleto"

        Delayed ->
            "Esperar"

        Cancelled ->
            "Pedir reembolso"



--2.3 Create a function "airportAction" that given a list of AirplaneStatus transform it into a list of strings with airplaneScheduleActions


airportAction : List AirplaneStatus -> List String
airportAction estado =
    List.map airplaneScheduleAction estado
