.class public final Lvendor/google/wireless_charger/RtxStatusInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public acctype:I

.field public chgConnected:Z

.field public iout:I

.field public level:I

.field public mode:B

.field public reason:B

.field public vout:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lvendor/google/wireless_charger/RtxStatusInfo$1;

    invoke-direct {v0}, Lvendor/google/wireless_charger/RtxStatusInfo$1;-><init>()V

    sput-object v0, Lvendor/google/wireless_charger/RtxStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lvendor/google/wireless_charger/RtxStatusInfo;->mode:B

    iput v0, p0, Lvendor/google/wireless_charger/RtxStatusInfo;->acctype:I

    iput-boolean v0, p0, Lvendor/google/wireless_charger/RtxStatusInfo;->chgConnected:Z

    iput v0, p0, Lvendor/google/wireless_charger/RtxStatusInfo;->vout:I

    iput v0, p0, Lvendor/google/wireless_charger/RtxStatusInfo;->iout:I

    iput v0, p0, Lvendor/google/wireless_charger/RtxStatusInfo;->level:I

    const/16 v0, 0xf

    iput-byte v0, p0, Lvendor/google/wireless_charger/RtxStatusInfo;->reason:B

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

    iget-byte v0, p0, Lvendor/google/wireless_charger/RtxStatusInfo;->mode:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lvendor/google/wireless_charger/RtxStatusInfo;->acctype:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lvendor/google/wireless_charger/RtxStatusInfo;->chgConnected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Lvendor/google/wireless_charger/RtxStatusInfo;->vout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lvendor/google/wireless_charger/RtxStatusInfo;->iout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lvendor/google/wireless_charger/RtxStatusInfo;->level:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-byte p0, p0, Lvendor/google/wireless_charger/RtxStatusInfo;->reason:B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
