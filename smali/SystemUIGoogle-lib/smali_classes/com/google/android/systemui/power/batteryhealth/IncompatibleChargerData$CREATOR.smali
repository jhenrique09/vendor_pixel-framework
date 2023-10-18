.class public final Lcom/google/android/systemui/power/batteryhealth/IncompatibleChargerData$CREATOR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6

    new-instance p0, Lcom/google/android/systemui/power/batteryhealth/IncompatibleChargerData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/power/batteryhealth/IncompatibleChargerData;-><init>(JJZ)V

    return-object p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/google/android/systemui/power/batteryhealth/IncompatibleChargerData;

    return-object p0
.end method
