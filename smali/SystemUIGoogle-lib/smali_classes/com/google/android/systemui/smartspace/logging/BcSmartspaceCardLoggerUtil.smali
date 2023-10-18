.class public abstract Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static containsValidTemplateType(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Z
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getTemplateType()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getTemplateType()I

    move-result p0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static createDimensionalLoggingInfo(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getTapAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getTapAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/TapAction;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "ss_card_dimension_ids"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "ss_card_dimension_values"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz v2, :cond_3

    if-eqz p0, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    new-instance v4, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceFeatureDimension;

    invoke-direct {v4}, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceFeatureDimension;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceFeatureDimension;->featureDimensionId:I

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceFeatureDimension;->featureDimensionValue:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    return-object v0

    :cond_4
    new-instance p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;

    invoke-direct {p0}, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceFeatureDimension;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceFeatureDimension;

    iput-object v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;->featureDimensions:[Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceFeatureDimension;

    return-object p0

    :cond_5
    :goto_2
    return-object v0
.end method

.method public static createSubcardLoggingInfo(Landroid/app/smartspace/SmartspaceTarget;)Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;
    .locals 3

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "subcardType"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "subcardId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/systemui/smartspace/InstanceId;->create(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    new-instance v1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo$Builder;

    invoke-direct {v1}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo$Builder;-><init>()V

    iput v0, v1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo$Builder;->mInstanceId:I

    iput p0, v1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo$Builder;->mCardTypeId:I

    new-instance p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo;

    invoke-direct {p0, v1}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo;-><init>(Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo$Builder;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo$Builder;

    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo$Builder;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo$Builder;->mSubcards:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo$Builder;->mClickedSubcardIndex:I

    new-instance v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;-><init>(Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo$Builder;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createSubcardLoggingInfo(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getSubtitleItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->createSubcardLoggingInfoHelper(Ljava/util/List;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)V

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getSubtitleSupplementalItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->createSubcardLoggingInfoHelper(Ljava/util/List;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)V

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getSupplementalLineItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->createSubcardLoggingInfoHelper(Ljava/util/List;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    new-instance p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo$Builder;

    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo$Builder;-><init>()V

    iput-object v1, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo$Builder;->mSubcards:Ljava/util/List;

    new-instance v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;-><init>(Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo$Builder;)V

    return-object v0
.end method

.method public static createSubcardLoggingInfoHelper(Ljava/util/List;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getLoggingInfo()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getLoggingInfo()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    move-result-object p1

    new-instance v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo$Builder;

    invoke-direct {v0}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->getFeatureType()I

    move-result v1

    iput v1, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo$Builder;->mCardTypeId:I

    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->getInstanceId()I

    move-result p1

    iput p1, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo$Builder;->mInstanceId:I

    new-instance p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo;

    invoke-direct {p1, v0}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo;-><init>(Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo$Builder;)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static getUid(Landroid/content/pm/PackageManager;Landroid/app/smartspace/SmartspaceTarget;)I
    .locals 3

    const/4 v0, -0x1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, 0x0

    :try_start_0
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public static tryForcePrimaryFeatureTypeAndInjectWeatherSubcard(Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;Landroid/app/smartspace/SmartspaceTarget;)V
    .locals 4

    iget v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mFeatureType:I

    const/4 v1, 0x0

    const-string v2, "date_card_794317_92634"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x27

    iput v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mFeatureType:I

    invoke-static {v2}, Lcom/google/android/systemui/smartspace/InstanceId;->create(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mInstanceId:I

    move v0, v3

    :goto_0
    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo$Builder;

    invoke-direct {v0}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo$Builder;-><init>()V

    iput v1, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo$Builder;->mClickedSubcardIndex:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo$Builder;->mSubcards:Ljava/util/List;

    new-instance v2, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    invoke-direct {v2, v0}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;-><init>(Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo$Builder;)V

    iput-object v2, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    iget-object v2, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;->mSubcards:Ljava/util/List;

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;->mSubcards:Ljava/util/List;

    :cond_3
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    iget-object v0, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;->mSubcards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    iget-object v0, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;->mSubcards:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    iget-object v0, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;->mSubcards:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo;

    iget v0, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo;->mCardTypeId:I

    if-eq v0, v3, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    iget-object v0, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;->mSubcards:Ljava/util/List;

    new-instance v2, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo$Builder;

    invoke-direct {v2}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo$Builder;-><init>()V

    invoke-static {p1}, Lcom/google/android/systemui/smartspace/InstanceId;->create(Landroid/app/smartspace/SmartspaceTarget;)I

    move-result p1

    iput p1, v2, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo$Builder;->mInstanceId:I

    iput v3, v2, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo$Builder;->mCardTypeId:I

    new-instance p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo;

    invoke-direct {p1, v2}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo;-><init>(Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo$Builder;)V

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    iget p1, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;->mClickedSubcardIndex:I

    if-lez p1, :cond_5

    add-int/2addr p1, v3

    iput p1, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;->mClickedSubcardIndex:I

    :cond_5
    :goto_1
    return-void
.end method

.method public static tryForcePrimaryFeatureTypeOrUpdateLogInfoFromTemplateData(Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)V
    .locals 2

    iget v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mFeatureType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x27

    iput v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mFeatureType:I

    const-string v0, "date_card_794317_92634"

    invoke-static {v0}, Lcom/google/android/systemui/smartspace/InstanceId;->create(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mInstanceId:I

    :goto_0
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getLoggingInfo()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getLoggingInfo()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->getFeatureType()I

    move-result v0

    if-lez v0, :cond_1

    iput v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mFeatureType:I

    :cond_1
    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getLoggingInfo()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->getInstanceId()I

    move-result p1

    if-lez p1, :cond_2

    iput p1, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mInstanceId:I

    :cond_2
    return-void
.end method
