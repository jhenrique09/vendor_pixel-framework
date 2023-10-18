.class public final Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public mCardinality:I

.field public mDimensionalInfo:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;

.field public mDisplaySurface:I

.field public mFeatureType:I

.field public mInstanceId:I

.field public mRank:I

.field public mReceivedLatency:I

.field public mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

.field public mUid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mDisplaySurface:I

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;-><init>(Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;)V

    return-object v0
.end method
