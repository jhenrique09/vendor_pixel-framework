.class public final Lvendor/google/wireless_charger/FanInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public count:B

.field public currentRpm:C

.field public fanMode:B

.field public maximumRpm:C

.field public minimumRpm:C

.field public type:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lvendor/google/wireless_charger/FanInfo$1;

    invoke-direct {v0}, Lvendor/google/wireless_charger/FanInfo$1;-><init>()V

    sput-object v0, Lvendor/google/wireless_charger/FanInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lvendor/google/wireless_charger/FanInfo;->fanMode:B

    iput-char v0, p0, Lvendor/google/wireless_charger/FanInfo;->currentRpm:C

    iput-char v0, p0, Lvendor/google/wireless_charger/FanInfo;->minimumRpm:C

    iput-char v0, p0, Lvendor/google/wireless_charger/FanInfo;->maximumRpm:C

    iput-byte v0, p0, Lvendor/google/wireless_charger/FanInfo;->type:B

    iput-byte v0, p0, Lvendor/google/wireless_charger/FanInfo;->count:B

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getStability()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-byte v0, p0, Lvendor/google/wireless_charger/FanInfo;->fanMode:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-char v0, p0, Lvendor/google/wireless_charger/FanInfo;->currentRpm:C

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-char v0, p0, Lvendor/google/wireless_charger/FanInfo;->minimumRpm:C

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-char v0, p0, Lvendor/google/wireless_charger/FanInfo;->maximumRpm:C

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-byte v0, p0, Lvendor/google/wireless_charger/FanInfo;->type:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte p0, p0, Lvendor/google/wireless_charger/FanInfo;->count:B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
