import 'package:app_asistencias/widgets/barra_nav.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class Fecha_popUp extends StatefulWidget {
  const Fecha_popUp({super.key});

  @override
  State<Fecha_popUp> createState() => _Fecha_popUpState();
}

class _Fecha_popUpState extends State<Fecha_popUp> {
  late DateTime fecha = DateTime.now();
  late DateTime _focusedDay = DateTime.now();

  @override
  void initState() {
    super.initState();
    fecha = DateTime.now(); // Inicializamos la fecha con la actual
    _focusedDay = fecha;
    initializeDateFormatting();
  }

  void _onSelectedDay(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      fecha = selectedDay; // Ahora actualiza bien la fecha
      _focusedDay = focusedDay;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          TableCalendar(
            rowHeight: 40,
            locale: 'es_ES',
            availableGestures: AvailableGestures.all,
            onDaySelected: _onSelectedDay,
            selectedDayPredicate: (day) => isSameDay(day, fecha),
            focusedDay: _focusedDay,
            // Fecha marcada (La actual)
            firstDay: DateTime.utc(2000, 1, 1),
            // Comienza el calendario
            lastDay: DateTime.utc(2090, 31, 12),
            calendarFormat: CalendarFormat.month, // Formato por defecto
            headerStyle: HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true
            ),



          ),

          SizedBox(height: 20),

          // Muestra la fecha selecionada
          Text("Día seleccionado: ${DateFormat('dd-MM-yyyy').format(fecha)}"),

          SizedBox(height: 20),

          // Botón para confirmar la fecha y te redirige a clases con el dia selecionado
          // Botón Iniciar sesión
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color(0xFF003E00), // Color hexadecimal
                fixedSize: Size.fromHeight(40)),
            onPressed: () {
              fecha = _focusedDay;
              Navigator.pushReplacementNamed(context, '/home');
            },
            child: const Text(
              'Confirmar',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
