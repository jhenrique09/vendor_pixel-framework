.class public final Lvendor/google/wireless_charger/WpcAuthChallengeResponse;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public certificateChainHashLsb:B

.field public maxProtocolVersion:B

.field public signatureR:[B

.field public signatureS:[B

.field public slotPopulatedMask:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lvendor/google/wireless_charger/WpcAuthChallengeResponse$1;

    invoke-direct {v0}, Lvendor/google/wireless_charger/WpcAuthChallengeResponse$1;-><init>()V

    sput-object v0, Lvendor/google/wireless_charger/WpcAuthChallengeResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lvendor/google/wireless_charger/WpcAuthChallengeResponse;->maxProtocolVersion:B

    iput-byte v0, p0, Lvendor/google/wireless_charger/WpcAuthChallengeResponse;->slotPopulatedMask:B

    iput-byte v0, p0, Lvendor/google/wireless_charger/WpcAuthChallengeResponse;->certificateChainHashLsb:B

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

    iget-byte v0, p0, Lvendor/google/wireless_charger/WpcAuthChallengeResponse;->maxProtocolVersion:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte v0, p0, Lvendor/google/wireless_charger/WpcAuthChallengeResponse;->slotPopulatedMask:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte v0, p0, Lvendor/google/wireless_charger/WpcAuthChallengeResponse;->certificateChainHashLsb:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lvendor/google/wireless_charger/WpcAuthChallengeResponse;->signatureR:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object p0, p0, Lvendor/google/wireless_charger/WpcAuthChallengeResponse;->signatureS:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
