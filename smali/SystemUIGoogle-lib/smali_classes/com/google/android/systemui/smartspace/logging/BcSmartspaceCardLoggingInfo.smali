.class public final Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final mCardinality:I

.field public final mDimensionalInfo:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;

.field public final mDisplaySurface:I

.field public mFeatureType:I

.field public mInstanceId:I

.field public final mRank:I

.field public final mReceivedLatency:I

.field public mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

.field public final mUid:I


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mInstanceId:I

    iput v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mInstanceId:I

    iget v0, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mDisplaySurface:I

    iput v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mDisplaySurface:I

    iget v0, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mRank:I

    iput v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mRank:I

    iget v0, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mCardinality:I

    iput v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mCardinality:I

    iget v0, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mFeatureType:I

    iput v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mFeatureType:I

    iget v0, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mReceivedLatency:I

    iput v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mReceivedLatency:I

    iget v0, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mUid:I

    iput v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mUid:I

    iget-object v0, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    iget-object p1, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mDimensionalInfo:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mDimensionalInfo:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    iget v1, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mInstanceId:I

    iget v3, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mInstanceId:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mDisplaySurface:I

    iget v3, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mDisplaySurface:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mRank:I

    iget v3, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mRank:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mCardinality:I

    iget v3, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mCardinality:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mFeatureType:I

    iget v3, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mFeatureType:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mReceivedLatency:I

    iget v3, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mReceivedLatency:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mUid:I

    iget v3, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mUid:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    iget-object v3, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mDimensionalInfo:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;

    iget-object p1, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mDimensionalInfo:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 9

    iget v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mInstanceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mDisplaySurface:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mRank:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mCardinality:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mFeatureType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mReceivedLatency:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "instance_id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", feature type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mFeatureType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", display surface = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mDisplaySurface:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rank = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mRank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cardinality = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mCardinality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", receivedLatencyMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mReceivedLatency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subcardInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dimensionalInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mDimensionalInfo:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
