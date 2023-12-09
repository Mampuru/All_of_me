class CardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InfoCard(
            title: 'ID Info',
            info: 'Your ID info here',
            icon: Icons.credit_card,
          ),
          SizedBox(height: 20),
          InfoCard(
            title: "Driver's Card",
            info: 'Driver\'s card info here',
            icon: Icons.directions_car,
          ),
          SizedBox(height: 20),
          InfoCard(
            title: 'Passport Info',
            info: 'Your passport info here',
            icon: Icons.flight,
          ),
        ],
      ),
    );
  }
}