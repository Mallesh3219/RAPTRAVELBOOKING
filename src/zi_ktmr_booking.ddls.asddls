@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking View'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZI_KTMR_BOOKING as select from zktmr_rap_book
{
    key travel_id as travel_id,
    key booking_id as booking_id,
        booking_date  as Booking_Date,
        customer_id   as Customer_Id,
        carrier_id    as Carrier_Id,
        connection_id as Connection_Id,
        flight_date   as Flight_Date,
        @Semantics.amount.currencyCode: 'Currency_Code'
        flight_price  as Flight_Price,
        currency_code as Currency_Code
}
