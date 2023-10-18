.class public final Lcom/google/android/systemui/qs/launcher/TileState;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public mContentDescription:Ljava/lang/CharSequence;

.field public mIcon:Landroid/graphics/drawable/Icon;

.field public mIsTransient:Z

.field public mLabel:Ljava/lang/CharSequence;

.field public mShowChevron:Z

.field public mState:I

.field public mStateDescription:Ljava/lang/CharSequence;

.field public mSubtitle:Ljava/lang/CharSequence;

.field public mSupportClick:Z

.field public mSupportLongClick:Z

.field public mTileSpec:Ljava/lang/CharSequence;

.field public mUnSupported:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/systemui/qs/launcher/TileState$1;

    invoke-direct {v0}, Lcom/google/android/systemui/qs/launcher/TileState$1;-><init>()V

    sput-object v0, Lcom/google/android/systemui/qs/launcher/TileState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/systemui/qs/launcher/TileState;->mState:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/systemui/qs/launcher/TileState;->mState:I

    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Lcom/google/android/systemui/qs/launcher/TileState;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/qs/launcher/TileState;->mState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/qs/launcher/TileState;->mIsTransient:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/qs/launcher/TileState;->mSupportClick:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/qs/launcher/TileState;->mSupportLongClick:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/qs/launcher/TileState;->mShowChevron:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/qs/launcher/TileState;->mUnSupported:Z

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/systemui/qs/launcher/TileState;->mLabel:Ljava/lang/CharSequence;

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/systemui/qs/launcher/TileState;->mSubtitle:Ljava/lang/CharSequence;

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/systemui/qs/launcher/TileState;->mContentDescription:Ljava/lang/CharSequence;

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/systemui/qs/launcher/TileState;->mStateDescription:Ljava/lang/CharSequence;

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/google/android/systemui/qs/launcher/TileState;->mTileSpec:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/qs/launcher/TileState;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/google/android/systemui/qs/launcher/TileState;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/google/android/systemui/qs/launcher/TileState;->mIsTransient:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/google/android/systemui/qs/launcher/TileState;->mSupportClick:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/google/android/systemui/qs/launcher/TileState;->mSupportLongClick:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/google/android/systemui/qs/launcher/TileState;->mShowChevron:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/google/android/systemui/qs/launcher/TileState;->mUnSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/google/android/systemui/qs/launcher/TileState;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/google/android/systemui/qs/launcher/TileState;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/google/android/systemui/qs/launcher/TileState;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/google/android/systemui/qs/launcher/TileState;->mStateDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object p0, p0, Lcom/google/android/systemui/qs/launcher/TileState;->mTileSpec:Ljava/lang/CharSequence;

    invoke-static {p0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    return-void
.end method
