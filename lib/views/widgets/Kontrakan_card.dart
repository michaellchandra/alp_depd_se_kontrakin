import 'package:alp_depd_se_kontrakin/models/kontrakan.dart';
import 'package:alp_depd_se_kontrakin/views/const/currencyformat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class KontrakanCard extends StatefulWidget {
  Kontrakan? kontrakan;
  KontrakanCard({super.key,
      required this.kontrakan});

  @override
  State<KontrakanCard> createState() => _KontrakanCardState();
}

class _KontrakanCardState extends State<KontrakanCard> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        print("Tapped");
        // Navigator.push(context, ) tolong arahin ke detail kontrakan untuk penyewa.
      }),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6)
        ),
        elevation: 8,
        child: SizedBox(
          height: 260,
          width: 335,
          child: Column(
            children: [
              Container(
                height: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(6),
                    topLeft: Radius.circular(6),
                  ),
                  image: DecorationImage(
                    image: NetworkImage("https://kontrakin.imtstack.com/storage/${widget.kontrakan!.image}"),
                    fit: BoxFit.fitWidth
                  )
                ),
              ),
              Container(
                                padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.location_on_outlined),
                                        Expanded(
                                          child: Text(
                                            "${widget.kontrakan!.city}, ${widget.kontrakan!.province}",
                                            style: TextStyle(
                                              fontSize: 15
                                            )
                                          ),
                                        )
                                      ]
                                    ),
                                    SizedBox(height: 6),
                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.fromLTRB(4,0,0,0),
                                          child: Text(
                                              "${widget.kontrakan!.address}",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16
                                              )
                                            ),
                                          )
                                        
                                      ]
                                    ),
                                    SizedBox(height: 6),
                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                          child:  RichText(
                                              text: new TextSpan(
                                                style: new TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold
                                                ),
                                                children: <TextSpan>[
                                                  new TextSpan(
                                                    text: CurrencyFormat.convertToIdr(widget.kontrakan!.pricePerYear, 2),
                                                    style: TextStyle(
                                                      color: Color(0xffFF4C00),
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.bold
                                                    )
                                                  ),
                                                  new TextSpan(
                                                    text: " / tahun",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.normal
                                                    )
                                                  )
                                                ]
                                              )
                                            )
                                          ),
                                      ]
                                    )
                                  ],
                                ),
                              )
            ],
          ),
        )
      )
    );
  }
}