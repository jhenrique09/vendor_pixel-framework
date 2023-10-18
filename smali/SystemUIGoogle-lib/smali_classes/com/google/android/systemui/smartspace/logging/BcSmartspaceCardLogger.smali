.class public abstract Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLogger;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static log(Lcom/google/android/systemui/smartspace/EventEnum;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)V
    .locals 14

    iget-object v0, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;->mSubcards:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;->mSubcards:Ljava/util/List;

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo;

    invoke-static {}, Lcom/android/systemui/smartspace/SmartspaceProtoLite$SmartSpaceCardMetadata;->newBuilder()Lcom/android/systemui/smartspace/SmartspaceProtoLite$SmartSpaceCardMetadata$Builder;

    move-result-object v6

    iget v7, v5, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo;->mInstanceId:I

    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v8, v6, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v8, Lcom/android/systemui/smartspace/SmartspaceProtoLite$SmartSpaceCardMetadata;

    invoke-static {v8, v7}, Lcom/android/systemui/smartspace/SmartspaceProtoLite$SmartSpaceCardMetadata;->-$$Nest$msetInstanceId(Lcom/android/systemui/smartspace/SmartspaceProtoLite$SmartSpaceCardMetadata;I)V

    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v7, v6, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v7, Lcom/android/systemui/smartspace/SmartspaceProtoLite$SmartSpaceCardMetadata;

    iget v5, v5, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo;->mCardTypeId:I

    invoke-static {v7, v5}, Lcom/android/systemui/smartspace/SmartspaceProtoLite$SmartSpaceCardMetadata;->-$$Nest$msetCardTypeId(Lcom/android/systemui/smartspace/SmartspaceProtoLite$SmartSpaceCardMetadata;I)V

    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/smartspace/SmartspaceProtoLite$SmartSpaceCardMetadata;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/systemui/smartspace/SmartspaceProtoLite$SmartSpaceSubcards;->newBuilder()Lcom/android/systemui/smartspace/SmartspaceProtoLite$SmartSpaceSubcards$Builder;

    move-result-object v3

    iget v0, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;->mClickedSubcardIndex:I

    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v4, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/android/systemui/smartspace/SmartspaceProtoLite$SmartSpaceSubcards;

    invoke-static {v4, v0}, Lcom/android/systemui/smartspace/SmartspaceProtoLite$SmartSpaceSubcards;->-$$Nest$msetClickedSubcardIndex(Lcom/android/systemui/smartspace/SmartspaceProtoLite$SmartSpaceSubcards;I)V

    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/systemui/smartspace/SmartspaceProtoLite$SmartSpaceSubcards;

    invoke-static {v0, v2}, Lcom/android/systemui/smartspace/SmartspaceProtoLite$SmartSpaceSubcards;->-$$Nest$maddAllSubcards(Lcom/android/systemui/smartspace/SmartspaceProtoLite$SmartSpaceSubcards;Ljava/lang/Iterable;)V

    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/smartspace/SmartspaceProtoLite$SmartSpaceSubcards;

    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v0

    move-object v12, v0

    goto :goto_2

    :cond_2
    :goto_1
    move-object v12, v1

    :goto_2
    iget-object v0, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mDimensionalInfo:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v1

    :cond_3
    move-object v13, v1

    check-cast p0, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->getId()I

    move-result v2

    iget v3, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mInstanceId:I

    iget v4, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mDisplaySurface:I

    iget v5, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mRank:I

    iget v6, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mCardinality:I

    iget v7, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mFeatureType:I

    iget v8, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mUid:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mReceivedLatency:I

    invoke-static/range {v2 .. v13}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(IIIIIIIIII[B[B)V

    return-void
.end method
