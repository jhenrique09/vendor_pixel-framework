.class public final Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static getFeatureType(Landroid/app/smartspace/SmartspaceTarget;)I
    .locals 2

    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTarget;->getActionChips()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result p0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0xd

    if-eq p0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const/4 p0, -0x2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    :cond_3
    :goto_1
    return p0
.end method

.method public static synthetic getMAX_FEATURE_TYPE$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getMIN_FEATURE_TYPE$annotations()V
    .locals 0

    return-void
.end method

.method public static useRecycledViewForAction(Landroid/app/smartspace/SmartspaceAction;Landroid/app/smartspace/SmartspaceAction;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez v2, :cond_5

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_4

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-nez v2, :cond_2

    if-nez v3, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    if-nez v2, :cond_5

    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_4

    :cond_4
    move v0, v1

    :cond_5
    :goto_4
    return v0
.end method

.method public static useRecycledViewForActionsList(Ljava/util/List;Ljava/util/List;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez v2, :cond_3

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v3, Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion$useRecycledViewForActionsList$1;

    invoke-direct {v3, p0, p1}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion$useRecycledViewForActionsList$1;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :cond_3
    :goto_2
    return v0
.end method


# virtual methods
.method public final getBaseLegacyCardRes(I)I
    .locals 1

    const/4 p0, -0x2

    const v0, 0x7f0d025b

    if-eq p1, p0, :cond_1

    const/4 p0, -0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x6

    if-eq p1, p0, :cond_1

    const/16 p0, 0x12

    if-eq p1, p0, :cond_1

    const/16 p0, 0x14

    if-eq p1, p0, :cond_1

    const/16 p0, 0x1e

    if-eq p1, p0, :cond_1

    const/16 p0, 0x9

    if-eq p1, p0, :cond_1

    const/16 p0, 0xa

    if-eq p1, p0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :cond_0
    const v0, 0x7f0d025e

    :cond_1
    :goto_0
    :pswitch_0
    return v0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getLegacySecondaryCardRes(I)I
    .locals 1

    const/4 p0, -0x2

    if-eq p1, p0, :cond_6

    const/4 p0, -0x1

    if-eq p1, p0, :cond_5

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eq p1, p0, :cond_7

    const/4 p0, 0x2

    if-eq p1, p0, :cond_7

    const/4 p0, 0x3

    if-eq p1, p0, :cond_4

    const/4 p0, 0x4

    if-eq p1, p0, :cond_3

    const/4 p0, 0x6

    if-eq p1, p0, :cond_7

    const/16 p0, 0x12

    if-eq p1, p0, :cond_4

    const/16 p0, 0x14

    if-eq p1, p0, :cond_2

    const/16 p0, 0x1e

    if-eq p1, p0, :cond_2

    const/16 p0, 0x9

    if-eq p1, p0, :cond_1

    const/16 p0, 0xa

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v0, 0x7f0d0264

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0d0265

    goto :goto_0

    :cond_0
    const v0, 0x7f0d0267

    goto :goto_0

    :cond_1
    const v0, 0x7f0d0266

    goto :goto_0

    :cond_2
    const v0, 0x7f0d025f

    goto :goto_0

    :cond_3
    const v0, 0x7f0d0260

    goto :goto_0

    :cond_4
    const v0, 0x7f0d0262

    goto :goto_0

    :cond_5
    const v0, 0x7f0d025c

    goto :goto_0

    :cond_6
    const v0, 0x7f0d025d

    :cond_7
    :goto_0
    :pswitch_2
    return v0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final useRecycledViewForNewTarget(Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceTarget;)Z
    .locals 2

    const/4 p0, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getHeaderAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceTarget;->getHeaderAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion;->useRecycledViewForAction(Landroid/app/smartspace/SmartspaceAction;Landroid/app/smartspace/SmartspaceAction;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion;->useRecycledViewForAction(Landroid/app/smartspace/SmartspaceAction;Landroid/app/smartspace/SmartspaceAction;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getActionChips()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceTarget;->getActionChips()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion;->useRecycledViewForActionsList(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getIconGrid()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceTarget;->getIconGrid()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion;->useRecycledViewForActionsList(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    move-result-object p1

    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    move-result-object p2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p0

    :goto_0
    if-nez v1, :cond_3

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, p0

    :goto_1
    if-eqz v1, :cond_2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move p1, p0

    goto :goto_3

    :cond_3
    :goto_2
    move p1, v0

    :goto_3
    if-eqz p1, :cond_4

    move p0, v0

    :cond_4
    return p0
.end method
