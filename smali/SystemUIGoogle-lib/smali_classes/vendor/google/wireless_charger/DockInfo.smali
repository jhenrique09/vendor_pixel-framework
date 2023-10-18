.class public final Lvendor/google/wireless_charger/DockInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public isGetInfoSupported:Z

.field public manufacturer:Ljava/lang/String;

.field public maxFwSize:I

.field public model:Ljava/lang/String;

.field public orientation:B

.field public serial:Ljava/lang/String;

.field public type:B

.field public version:Lvendor/google/wireless_charger/FirmwareVersion;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lvendor/google/wireless_charger/DockInfo$1;

    invoke-direct {v0}, Lvendor/google/wireless_charger/DockInfo$1;-><init>()V

    sput-object v0, Lvendor/google/wireless_charger/DockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lvendor/google/wireless_charger/DockInfo;->maxFwSize:I

    iput-boolean v0, p0, Lvendor/google/wireless_charger/DockInfo;->isGetInfoSupported:Z

    iput-byte v0, p0, Lvendor/google/wireless_charger/DockInfo;->orientation:B

    const/16 v0, 0xf

    iput-byte v0, p0, Lvendor/google/wireless_charger/DockInfo;->type:B

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    iget-object p0, p0, Lvendor/google/wireless_charger/DockInfo;->version:Lvendor/google/wireless_charger/FirmwareVersion;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    :goto_0
    or-int/2addr p0, v0

    return p0
.end method

.method public final getStability()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lvendor/google/wireless_charger/DockInfo;->manufacturer:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lvendor/google/wireless_charger/DockInfo;->model:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lvendor/google/wireless_charger/DockInfo;->serial:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v1, p0, Lvendor/google/wireless_charger/DockInfo;->maxFwSize:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v1, p0, Lvendor/google/wireless_charger/DockInfo;->isGetInfoSupported:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v1, p0, Lvendor/google/wireless_charger/DockInfo;->version:Lvendor/google/wireless_charger/FirmwareVersion;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-byte p2, p0, Lvendor/google/wireless_charger/DockInfo;->orientation:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte p0, p0, Lvendor/google/wireless_charger/DockInfo;->type:B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, v0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
