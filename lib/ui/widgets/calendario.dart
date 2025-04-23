import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendario extends StatefulWidget {
  const Calendario({super.key});

  @override
  State<Calendario> createState() => _CalendarioState();
}

class _CalendarioState extends State<Calendario> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      locale: 'es_ES',

      // Fecha comienzo de calendario
      firstDay: DateTime.utc(2000, 1, 1),

      // Finaliza el calendario
      lastDay: DateTime.utc(2090, 31, 12),

      focusedDay: _focusedDay,

      // Estilo encabezado del calendario
      headerStyle: HeaderStyle(
          formatButtonVisible: false, // Ocultar botón de formato de calendario
          titleCentered: true // El mes que se muestra sale centrado
      ),

      // El calendario empieza con el "Lunes"
      startingDayOfWeek: StartingDayOfWeek.monday,

      // Tipo de calendari mensual
      calendarFormat: CalendarFormat.month,

      //Permite que no sea necesario pulsar sobre las flechas sino también deslizar
      availableGestures: AvailableGestures.all,



      selectedDayPredicate: (day) {
        return isSameDay(_selectedDay, day);
      },
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _selectedDay = selectedDay;
          _focusedDay = focusedDay;
        });
      },
      onPageChanged: (focusedDay) {
        _focusedDay = focusedDay;
      },


    );
  }
}
