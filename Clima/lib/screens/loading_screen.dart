import 'package:flutter/material.dart';
import 'location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:clima/services/weather.dart';

class LoadingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoadingScreenState();
  }
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    var weatherData = await WeatherModel().getLocationWeather();

    if (weatherData != null && mounted) {
      Navigator.pushReplacement(
        // Dùng pushReplacement để tránh màn hình cũ bị giữ lại
        context,
        MaterialPageRoute(
          builder: (context) => LocationScreen(locationWeather: weatherData),
        ),
      );
    } else {
      print('⚠️ Không lấy được dữ liệu thời tiết!');
      // Hiển thị thông báo lỗi hoặc thử lại
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}
