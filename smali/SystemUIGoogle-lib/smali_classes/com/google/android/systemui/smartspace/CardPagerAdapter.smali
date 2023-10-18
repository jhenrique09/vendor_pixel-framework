.class public final Lcom/google/android/systemui/smartspace/CardPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source ""


# static fields
.field public static final Companion:Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion;


# instance fields
.field public final _aodTargets:Ljava/util/List;

.field public final _lockscreenTargets:Ljava/util/List;

.field public configProvider:Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;

.field public currentTextColor:I

.field public dataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

.field public dndDescription:Ljava/lang/String;

.field public dndImage:Landroid/graphics/drawable/Drawable;

.field public dozeAmount:F

.field public final dozeColor:I

.field public final enableCardRecycling:Lcom/google/android/systemui/smartspace/LazyServerFlagLoader;

.field public final enableReducedCardRecycling:Lcom/google/android/systemui/smartspace/LazyServerFlagLoader;

.field public hasAodLockscreenTransition:Z

.field public hasDifferentTargets:Z

.field public keyguardBypassEnabled:Z

.field public final mediaTargets:Ljava/util/List;

.field public final nextAlarmData:Lcom/google/android/systemui/smartspace/BcNextAlarmData;

.field public previousDozeAmount:F

.field public primaryTextColor:I

.field public final recycledCards:Landroid/util/SparseArray;

.field public final recycledLegacyCards:Landroid/util/SparseArray;

.field public final root:Landroid/view/View;

.field public smartspaceTargets:Ljava/util/List;

.field public transitioningTo:Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

.field public uiSurface:Ljava/lang/String;

.field public final viewHolders:Landroid/util/SparseArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion;

    invoke-direct {v0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion;-><init>()V

    sput-object v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->Companion:Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;)V
    .locals 2

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->root:Landroid/view/View;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->viewHolders:Landroid/util/SparseArray;

    new-instance v0, Lcom/google/android/systemui/smartspace/LazyServerFlagLoader;

    const-string v1, "enable_card_recycling"

    invoke-direct {v0, v1}, Lcom/google/android/systemui/smartspace/LazyServerFlagLoader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->enableCardRecycling:Lcom/google/android/systemui/smartspace/LazyServerFlagLoader;

    new-instance v0, Lcom/google/android/systemui/smartspace/LazyServerFlagLoader;

    const-string v1, "enable_reduced_card_recycling"

    invoke-direct {v0, v1}, Lcom/google/android/systemui/smartspace/LazyServerFlagLoader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->enableReducedCardRecycling:Lcom/google/android/systemui/smartspace/LazyServerFlagLoader;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->recycledCards:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->recycledLegacyCards:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->smartspaceTargets:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->_aodTargets:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->_lockscreenTargets:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mediaTargets:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->dozeColor:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x1010036

    invoke-static {v0, p1}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->primaryTextColor:I

    iput p1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->currentTextColor:I

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->configProvider:Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;

    sget-object p1, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;->NOT_IN_TRANSITION:Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->transitioningTo:Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    new-instance p1, Lcom/google/android/systemui/smartspace/BcNextAlarmData;

    invoke-direct {p1}, Lcom/google/android/systemui/smartspace/BcNextAlarmData;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->nextAlarmData:Lcom/google/android/systemui/smartspace/BcNextAlarmData;

    return-void
.end method

.method public static synthetic getAodTargets$annotations()V
    .locals 0

    return-void
.end method

.method public static final getBaseLegacyCardRes(I)I
    .locals 1

    sget-object v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->Companion:Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion;

    invoke-virtual {v0, p0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion;->getBaseLegacyCardRes(I)I

    move-result p0

    return p0
.end method

.method public static synthetic getConfigProvider$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getDataProvider$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getDozeAmount$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getHasAodLockscreenTransition$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getHasDifferentTargets$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getKeyguardBypassEnabled$annotations()V
    .locals 0

    return-void
.end method

.method public static final getLegacySecondaryCardRes(I)I
    .locals 1

    sget-object v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->Companion:Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion;

    invoke-virtual {v0, p0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion;->getLegacySecondaryCardRes(I)I

    move-result p0

    return p0
.end method

.method public static synthetic getLockscreenTargets$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getNextAlarmData$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getPrimaryTextColor$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getUiSurface$annotations()V
    .locals 0

    return-void
.end method

.method public static final useRecycledViewForNewTarget(Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceTarget;)Z
    .locals 1

    sget-object v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->Companion:Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion;->useRecycledViewForNewTarget(Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceTarget;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final addDefaultDateCardIfEmpty(Ljava/util/List;)V
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/smartspace/SmartspaceTarget$Builder;

    new-instance v1, Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->root:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    const-string v2, "date_card_794317_92634"

    invoke-direct {v0, v2, v1, p0}, Landroid/app/smartspace/SmartspaceTarget$Builder;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/app/smartspace/SmartspaceTarget$Builder;->setFeatureType(I)Landroid/app/smartspace/SmartspaceTarget$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTarget$Builder;->build()Landroid/app/smartspace/SmartspaceTarget;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4

    check-cast p3, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;

    iget-object v0, p3, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->legacyCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->enableCardRecycling:Lcom/google/android/systemui/smartspace/LazyServerFlagLoader;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/systemui/smartspace/LazyServerFlagLoader;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->recycledLegacyCards:Landroid/util/SparseArray;

    invoke-static {v2}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion;->getFeatureType(Landroid/app/smartspace/SmartspaceTarget;)I

    move-result v2

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p3, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->card:Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/android/systemui/smartspace/LazyServerFlagLoader;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->recycledCards:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->viewHolders:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p3, :cond_4

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_4
    return-void
.end method

.method public final getCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->smartspaceTargets:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getItemPosition(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;

    iget v0, p1, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->position:I

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->getTargetAtPosition(I)Landroid/app/smartspace/SmartspaceTarget;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->target:Landroid/app/smartspace/SmartspaceTarget;

    const/4 v2, -0x1

    if-ne v1, v0, :cond_0

    return v2

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion;->getFeatureType(Landroid/app/smartspace/SmartspaceTarget;)I

    move-result v1

    iget-object v3, p1, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->target:Landroid/app/smartspace/SmartspaceTarget;

    invoke-static {v3}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion;->getFeatureType(Landroid/app/smartspace/SmartspaceTarget;)I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->target:Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {v3}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p1, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->target:Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->onBindViewHolder(Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;)V

    return v2

    :cond_1
    const/4 p0, -0x2

    return p0
.end method

.method public final getTargetAtPosition(I)Landroid/app/smartspace/SmartspaceTarget;
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->smartspaceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->smartspaceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->smartspaceTargets:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/smartspace/SmartspaceTarget;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public final instantiateItem(ILandroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->smartspaceTargets:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {v3}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->containsValidTemplateType(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Z

    move-result v4

    sget-object v5, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->Companion:Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion;

    const v6, 0x7f0702a7

    iget-object v8, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->enableReducedCardRecycling:Lcom/google/android/systemui/smartspace/LazyServerFlagLoader;

    const/4 v9, -0x2

    const v10, 0x7f07029b

    const/16 v11, 0x8

    const-string v12, "lockscreen"

    const/4 v13, 0x0

    iget-object v14, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->enableCardRecycling:Lcom/google/android/systemui/smartspace/LazyServerFlagLoader;

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v4

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v7, "Use UI template for the feature: "

    invoke-direct {v15, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "SsCardPagerAdapter"

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Lcom/google/android/systemui/smartspace/LazyServerFlagLoader;->get()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->recycledCards:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v14

    invoke-virtual {v4, v14}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v8}, Lcom/google/android/systemui/smartspace/LazyServerFlagLoader;->get()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, v4, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {v5, v3, v8}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion;->useRecycledViewForNewTarget(Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceTarget;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v3}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v5

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getText()Landroid/app/smartspace/uitemplatedata/Text;

    move-result-object v8

    invoke-static {v8}, Landroid/app/smartspace/SmartspaceUtils;->isEmpty(Landroid/app/smartspace/uitemplatedata/Text;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v5}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getIcon()Landroid/app/smartspace/uitemplatedata/Icon;

    move-result-object v5

    if-eqz v5, :cond_4

    :cond_3
    const v5, 0x7f0d0259

    goto :goto_2

    :cond_4
    const v5, 0x7f0d025a

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    invoke-virtual {v8, v5, v2, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;

    iget-object v14, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->uiSurface:Ljava/lang/String;

    iput-object v14, v5, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mUiSurface:Ljava/lang/String;

    iget-object v15, v5, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    if-eqz v15, :cond_5

    invoke-static {v14, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    iget-object v12, v5, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    invoke-virtual {v12}, Lcom/google/android/systemui/smartspace/IcuDateTextView;->setUpdatesOnAod()V

    :cond_5
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getTemplateType()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->getSecondaryCardRes(I)I

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v8, v4, v5, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    const-string v8, "Secondary card is found"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v5, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSecondaryCardPane:Landroid/view/ViewGroup;

    if-nez v7, :cond_6

    goto :goto_3

    :cond_6
    iput-object v4, v5, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSecondaryCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    invoke-static {v7, v11}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object v7, v5, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSecondaryCardPane:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-direct {v7, v9, v8}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iput v13, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iput v13, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v13, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iget-object v6, v5, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSecondaryCardPane:Landroid/view/ViewGroup;

    invoke-virtual {v6, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    :goto_3
    move-object v4, v5

    :cond_8
    :goto_4
    new-instance v5, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6, v3, v4}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;-><init>(ILcom/google/android/systemui/smartspace/BcSmartspaceCard;Landroid/app/smartspace/SmartspaceTarget;Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;)V

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_8

    :cond_9
    invoke-virtual {v14}, Lcom/google/android/systemui/smartspace/LazyServerFlagLoader;->get()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->recycledLegacyCards:Landroid/util/SparseArray;

    invoke-static {v3}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion;->getFeatureType(Landroid/app/smartspace/SmartspaceTarget;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_b

    invoke-virtual {v8}, Lcom/google/android/systemui/smartspace/LazyServerFlagLoader;->get()Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, v4, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {v5, v3, v7}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion;->useRecycledViewForNewTarget(Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceTarget;)Z

    move-result v7

    if-eqz v7, :cond_b

    goto :goto_7

    :cond_b
    invoke-static {v3}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion;->getFeatureType(Landroid/app/smartspace/SmartspaceTarget;)I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-virtual {v5, v4}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion;->getBaseLegacyCardRes(I)I

    move-result v8

    invoke-virtual {v7, v8, v2, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    iget-object v14, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->uiSurface:Ljava/lang/String;

    iput-object v14, v8, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mUiSurface:Ljava/lang/String;

    iget-object v15, v8, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    if-eqz v15, :cond_c

    invoke-static {v14, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_c

    iget-object v12, v8, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    invoke-virtual {v12}, Lcom/google/android/systemui/smartspace/IcuDateTextView;->setUpdatesOnAod()V

    :cond_c
    invoke-virtual {v5, v4}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion;->getLegacySecondaryCardRes(I)I

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v7, v4, v8, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    iget-object v5, v8, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSecondaryCardGroup:Landroid/view/ViewGroup;

    if-nez v5, :cond_d

    goto :goto_6

    :cond_d
    iput-object v4, v8, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSecondaryCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    invoke-static {v5, v11}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object v5, v8, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSecondaryCardGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-direct {v5, v9, v7}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iput v13, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iput v13, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v13, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iget-object v6, v8, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSecondaryCardGroup:Landroid/view/ViewGroup;

    invoke-virtual {v6, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_e
    :goto_6
    move-object v4, v8

    :cond_f
    :goto_7
    new-instance v5, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v4, v3, v6}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;-><init>(ILcom/google/android/systemui/smartspace/BcSmartspaceCard;Landroid/app/smartspace/SmartspaceTarget;Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;)V

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_8
    invoke-virtual {v0, v5}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->onBindViewHolder(Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;)V

    iget-object v0, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->viewHolders:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v5
.end method

.method public final isMediaPreferred(Ljava/util/List;)Z
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result p1

    if-ne p1, v2, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mediaTargets:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v2

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;

    iget-object p0, p2, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->legacyCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    if-eq p1, p0, :cond_1

    iget-object p0, p2, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->card:Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final onBindViewHolder(Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->smartspaceTargets:Ljava/util/List;

    iget v3, v1, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->containsValidTemplateType(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Z

    move-result v3

    new-instance v4, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;

    invoke-direct {v4}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;-><init>()V

    invoke-static {v2}, Lcom/google/android/systemui/smartspace/InstanceId;->create(Landroid/app/smartspace/SmartspaceTarget;)I

    move-result v5

    iput v5, v4, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mInstanceId:I

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v5

    iput v5, v4, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mFeatureType:I

    iget-object v5, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->uiSurface:Ljava/lang/String;

    iget v6, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->dozeAmount:F

    invoke-static {v6, v5}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getLoggingDisplaySurface(FLjava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mDisplaySurface:I

    iget v5, v1, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->position:I

    iput v5, v4, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mRank:I

    iget-object v5, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->smartspaceTargets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iput v5, v4, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mCardinality:I

    iget-object v5, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->root:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->getUid(Landroid/content/pm/PackageManager;Landroid/app/smartspace/SmartspaceTarget;)I

    move-result v5

    iput v5, v4, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mUid:I

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->createSubcardLoggingInfo(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    move-result-object v5

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->createSubcardLoggingInfo(Landroid/app/smartspace/SmartspaceTarget;)Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    move-result-object v5

    :goto_0
    iput-object v5, v4, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->createDimensionalLoggingInfo(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mDimensionalInfo:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;

    new-instance v13, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    invoke-direct {v13, v4}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;-><init>(Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;)V

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v15, 0x8

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v12, 0x0

    iget-object v11, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->nextAlarmData:Lcom/google/android/systemui/smartspace/BcNextAlarmData;

    const/4 v6, 0x0

    const-string v7, "SsCardPagerAdapter"

    if-eqz v3, :cond_19

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->tryForcePrimaryFeatureTypeOrUpdateLogInfoFromTemplateData(Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)V

    iget-object v1, v1, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->card:Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;

    if-nez v1, :cond_1

    const-string v0, "No ui-template card view can be binded"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v3, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->dataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    if-nez v3, :cond_2

    move-object v3, v12

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/google/android/systemui/smartspace/CardPagerAdapter$onBindViewHolder$1;

    invoke-direct {v3, v0, v5}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$onBindViewHolder$1;-><init>(Lcom/google/android/systemui/smartspace/CardPagerAdapter;I)V

    :goto_1
    iget-object v7, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->smartspaceTargets:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v10, :cond_3

    move v7, v10

    goto :goto_2

    :cond_3
    move v7, v5

    :goto_2
    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mPrevSmartspaceTargetId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_3

    :cond_4
    iput-object v12, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    iput-object v12, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    iput v5, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mFeatureType:I

    iput-object v12, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    if-eqz v8, :cond_5

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-virtual {v1, v8}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->resetTextView(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;)V

    iget-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-virtual {v1, v8}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->resetTextView(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;)V

    iget-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleSupplementalView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-virtual {v1, v8}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->resetTextView(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;)V

    iget-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSupplementalLineTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-virtual {v1, v8}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->resetTextView(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;)V

    iget-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mNextAlarmTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-virtual {v1, v8}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->resetTextView(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;)V

    iget-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mNextAlarmImageView:Landroid/widget/ImageView;

    if-eqz v8, :cond_6

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    iget-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-static {v8, v15}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-static {v8, v15}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleSupplementalView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-static {v8, v15}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSecondaryCardPane:Landroid/view/ViewGroup;

    invoke-static {v8, v15}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDndImageView:Landroid/widget/ImageView;

    invoke-static {v8, v15}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mNextAlarmImageView:Landroid/widget/ImageView;

    invoke-static {v8, v15}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mNextAlarmTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-static {v8, v15}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mExtrasGroup:Landroid/view/ViewGroup;

    invoke-static {v8, v15}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    :goto_3
    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mPrevSmartspaceTargetId:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    move-result-object v8

    iput-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v8

    iput v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mFeatureType:I

    iput-object v13, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    iput-boolean v7, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mShouldShowPageIndicator:Z

    iput-boolean v5, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mValidSecondaryCard:Z

    iget-object v7, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTextGroup:Landroid/view/ViewGroup;

    if-eqz v7, :cond_7

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->setTranslationX(F)V

    :cond_7
    iget-object v6, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    if-nez v6, :cond_8

    move v11, v5

    move-object v2, v12

    goto/16 :goto_d

    :cond_8
    iget-object v6, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    if-eqz v6, :cond_9

    goto :goto_4

    :cond_9
    new-instance v6, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;

    invoke-direct {v6}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;-><init>()V

    iget-object v7, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mUiSurface:Ljava/lang/String;

    iget v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDozeAmount:F

    invoke-static {v8, v7}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getLoggingDisplaySurface(FLjava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mDisplaySurface:I

    iget v7, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mFeatureType:I

    iput v7, v6, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mFeatureType:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    invoke-static {v7, v8}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->getUid(Landroid/content/pm/PackageManager;Landroid/app/smartspace/SmartspaceTarget;)I

    move-result v7

    iput v7, v6, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mUid:I

    iget-object v7, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {v7}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->createDimensionalLoggingInfo(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mDimensionalInfo:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;

    new-instance v7, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    invoke-direct {v7, v6}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;-><init>(Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;)V

    move-object v6, v7

    :goto_4
    iput-object v6, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    iget-object v6, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSecondaryCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    const-string v9, "SsBaseTemplateCard"

    if-eqz v6, :cond_a

    const-string v6, "Secondary card is not null"

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSecondaryCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;->reset(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSecondaryCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    iget-object v7, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    invoke-virtual {v6, v2, v3, v7}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;->setSmartspaceActions(Landroid/app/smartspace/SmartspaceTarget;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)Z

    move-result v6

    iput-boolean v6, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mValidSecondaryCard:Z

    :cond_a
    iget-object v6, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSecondaryCardPane:Landroid/view/ViewGroup;

    if-eqz v6, :cond_e

    iget v7, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDozeAmount:F

    cmpl-float v4, v7, v4

    if-eqz v4, :cond_c

    iget-boolean v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mValidSecondaryCard:Z

    if-nez v4, :cond_b

    goto :goto_5

    :cond_b
    move v10, v5

    :cond_c
    :goto_5
    if-eqz v10, :cond_d

    move v4, v15

    goto :goto_6

    :cond_d
    move v4, v5

    :goto_6
    invoke-static {v6, v4}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    :cond_e
    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    invoke-virtual {v4}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v4

    iget-object v6, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    if-nez v6, :cond_f

    move-object/from16 v18, v9

    move-object v14, v11

    move-object v5, v12

    goto :goto_8

    :cond_f
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getTapAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    move-result-object v6

    if-eqz v6, :cond_10

    invoke-virtual {v4}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getTapAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/smartspace/uitemplatedata/TapAction;->getId()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_10
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_7
    new-instance v6, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;

    invoke-direct {v6, v4}, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getOpenCalendarIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->setIntent(Landroid/content/Intent;)Landroid/app/smartspace/uitemplatedata/TapAction$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->build()Landroid/app/smartspace/uitemplatedata/TapAction;

    move-result-object v4

    iget-object v7, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    const-string v10, "SsBaseTemplateCard"

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v6, v1

    move-object v8, v4

    move-object/from16 v18, v9

    move-object v9, v3

    move-object v14, v11

    move-object v11, v13

    move-object v5, v12

    move/from16 v12, v17

    invoke-static/range {v6 .. v12}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->setOnClickListener$1(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/uitemplatedata/TapAction;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Ljava/lang/String;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;I)V

    iget-object v6, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    iget-object v7, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    const-string v10, "SsBaseTemplateCard"

    move-object v8, v4

    move-object v9, v3

    move-object v11, v13

    move/from16 v12, v16

    invoke-static/range {v6 .. v12}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->setOnClickListener$1(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/uitemplatedata/TapAction;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Ljava/lang/String;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;I)V

    :goto_8
    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iget-object v6, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    invoke-virtual {v6}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v6

    invoke-virtual {v1, v4, v6, v3}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->setUpTextView(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Lcom/google/android/systemui/smartspace/CardPagerAdapter$onBindViewHolder$1;)V

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iget-object v6, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    invoke-virtual {v6}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getSubtitleItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v6

    invoke-virtual {v1, v4, v6, v3}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->setUpTextView(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Lcom/google/android/systemui/smartspace/CardPagerAdapter$onBindViewHolder$1;)V

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleSupplementalView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iget-object v6, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    invoke-virtual {v6}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getSubtitleSupplementalItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v6

    invoke-virtual {v1, v4, v6, v3}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->setUpTextView(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Lcom/google/android/systemui/smartspace/CardPagerAdapter$onBindViewHolder$1;)V

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    invoke-virtual {v4}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getSupplementalAlarmItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v4

    iget-object v6, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mNextAlarmImageView:Landroid/widget/ImageView;

    if-eqz v6, :cond_14

    iget-object v7, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mNextAlarmTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    if-nez v7, :cond_11

    goto/16 :goto_a

    :cond_11
    iget-object v7, v14, Lcom/google/android/systemui/smartspace/BcNextAlarmData;->mImage:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_12

    invoke-static {v6, v15}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mNextAlarmTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-static {v4, v15}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mNextAlarmImageView:Landroid/widget/ImageView;

    invoke-static {v4, v5}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->offsetImageViewForIcon(Landroid/widget/ImageView;Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;)V

    goto :goto_a

    :cond_12
    new-instance v6, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;-><init>(Landroid/content/Context;)V

    iget-object v7, v14, Lcom/google/android/systemui/smartspace/BcNextAlarmData;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mNextAlarmImageView:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mNextAlarmImageView:Landroid/widget/ImageView;

    invoke-static {v7, v6}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->offsetImageViewForIcon(Landroid/widget/ImageView;Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;)V

    iget-object v6, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mNextAlarmImageView:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    invoke-virtual {v14, v4}, Lcom/google/android/systemui/smartspace/BcNextAlarmData;->getDescription(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mNextAlarmTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v10

    const v11, 0x7f13009d

    invoke-virtual {v9, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mNextAlarmTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mNextAlarmTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-static {v6, v7}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    if-nez v4, :cond_13

    move-object v12, v5

    goto :goto_9

    :cond_13
    invoke-virtual {v4}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getTapAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    move-result-object v12

    :goto_9
    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mNextAlarmImageView:Landroid/widget/ImageView;

    iget-object v6, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mUiSurface:Ljava/lang/String;

    iget v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDozeAmount:F

    invoke-static {v8, v6}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getLoggingDisplaySurface(FLjava/lang/String;)I

    move-result v6

    invoke-virtual {v14, v4, v12, v3, v6}, Lcom/google/android/systemui/smartspace/BcNextAlarmData;->setOnClickListener(Landroid/view/View;Landroid/app/smartspace/uitemplatedata/TapAction;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;I)V

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mNextAlarmTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iget-object v6, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mUiSurface:Ljava/lang/String;

    iget v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDozeAmount:F

    invoke-static {v8, v6}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getLoggingDisplaySurface(FLjava/lang/String;)I

    move-result v6

    invoke-virtual {v14, v4, v12, v3, v6}, Lcom/google/android/systemui/smartspace/BcNextAlarmData;->setOnClickListener(Landroid/view/View;Landroid/app/smartspace/uitemplatedata/TapAction;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;I)V

    goto :goto_b

    :cond_14
    :goto_a
    const/4 v7, 0x0

    :goto_b
    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSupplementalLineTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iget-object v6, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    invoke-virtual {v6}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getSupplementalLineItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v6

    invoke-virtual {v1, v4, v6, v3}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->setUpTextView(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Lcom/google/android/systemui/smartspace/CardPagerAdapter$onBindViewHolder$1;)V

    invoke-virtual {v1}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->updateZenVisibility()V

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    invoke-virtual {v4}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v4

    if-eqz v4, :cond_15

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    invoke-virtual {v4}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getTapAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    move-result-object v4

    if-eqz v4, :cond_15

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    invoke-virtual {v4}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getTapAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    move-result-object v6

    const-string v8, "SsBaseTemplateCard"

    iget-object v9, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    const/4 v10, 0x0

    move-object v12, v3

    move-object v3, v1

    move-object v4, v2

    move-object v2, v5

    move v11, v7

    move-object v5, v6

    move-object v6, v12

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    invoke-static/range {v3 .. v9}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->setOnClickListener$1(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/uitemplatedata/TapAction;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Ljava/lang/String;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;I)V

    goto :goto_c

    :cond_15
    move-object v2, v5

    move v11, v7

    :goto_c
    iget-object v3, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSecondaryCardPane:Landroid/view/ViewGroup;

    if-nez v3, :cond_16

    const-string v3, "Secondary card pane is null"

    move-object/from16 v4, v18

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_16
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSecondaryCardPane:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_d
    iget-object v3, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->dndImage:Landroid/graphics/drawable/Drawable;

    iget-object v4, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->dndDescription:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDndImageView:Landroid/widget/ImageView;

    if-nez v5, :cond_17

    goto :goto_f

    :cond_17
    if-nez v3, :cond_18

    invoke-static {v5, v15}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object v3, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDndImageView:Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->offsetImageViewForIcon(Landroid/widget/ImageView;Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;)V

    goto :goto_e

    :cond_18
    new-instance v2, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDndImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDndImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDndImageView:Landroid/widget/ImageView;

    invoke-static {v3, v11}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object v3, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDndImageView:Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->offsetImageViewForIcon(Landroid/widget/ImageView;Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;)V

    :goto_e
    invoke-virtual {v1}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->updateZenVisibility()V

    :goto_f
    iget v2, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->currentTextColor:I

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->setPrimaryTextColor(I)V

    iget v0, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->dozeAmount:F

    invoke-virtual {v1, v0}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->setDozeAmount(F)V

    goto/16 :goto_2b

    :cond_19
    move-object v14, v11

    move v11, v5

    invoke-static {v13, v2}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->tryForcePrimaryFeatureTypeAndInjectWeatherSubcard(Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;Landroid/app/smartspace/SmartspaceTarget;)V

    iget-object v1, v1, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->legacyCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    if-nez v1, :cond_1a

    const-string v0, "No legacy card view can be binded"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1a
    iget-object v3, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->dataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    if-nez v3, :cond_1b

    move-object v3, v12

    goto :goto_10

    :cond_1b
    new-instance v3, Lcom/google/android/systemui/smartspace/CardPagerAdapter$onBindViewHolder$1;

    invoke-direct {v3, v0, v10}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$onBindViewHolder$1;-><init>(Lcom/google/android/systemui/smartspace/CardPagerAdapter;I)V

    :goto_10
    iget-object v5, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->smartspaceTargets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v10, :cond_1c

    move v5, v10

    goto :goto_11

    :cond_1c
    move v5, v11

    :goto_11
    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mPrevSmartspaceTargetId:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    goto :goto_12

    :cond_1d
    iput-object v7, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mPrevSmartspaceTargetId:Ljava/lang/String;

    iput-object v12, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mEventNotifier:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

    iget-object v7, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSecondaryCardGroup:Landroid/view/ViewGroup;

    invoke-static {v7, v15}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object v7, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    invoke-virtual {v7, v12}, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    invoke-virtual {v7, v12}, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->updateZenVisibility()V

    invoke-virtual {v1, v12, v12, v11}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    invoke-virtual {v1, v12, v12, v11}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->setSubtitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    invoke-virtual {v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->updateIconTint()V

    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_1e

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1e
    iget-object v7, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_1f

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1f
    iget-object v7, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconSubtitleView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    if-eqz v7, :cond_20

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_20
    :goto_12
    iput-object v2, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    iput-object v3, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mEventNotifier:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getHeaderAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v9

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v8

    iput-boolean v5, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mUsePageIndicatorUi:Z

    iput-boolean v11, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mValidSecondaryCard:Z

    iget-object v3, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mTextGroup:Landroid/view/ViewGroup;

    if-eqz v3, :cond_21

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setTranslationX(F)V

    :cond_21
    if-eqz v9, :cond_2d

    iget-object v3, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSecondaryCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    if-eqz v3, :cond_22

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;->reset(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSecondaryCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    iget-object v5, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mEventNotifier:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

    invoke-virtual {v3, v2, v5, v13}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;->setSmartspaceActions(Landroid/app/smartspace/SmartspaceTarget;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mValidSecondaryCard:Z

    :cond_22
    iget-object v3, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSecondaryCardGroup:Landroid/view/ViewGroup;

    if-eqz v3, :cond_23

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_23
    iget-object v3, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSecondaryCardGroup:Landroid/view/ViewGroup;

    iget v5, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mDozeAmount:F

    cmpl-float v4, v5, v4

    if-eqz v4, :cond_25

    iget-boolean v4, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mValidSecondaryCard:Z

    if-nez v4, :cond_24

    goto :goto_13

    :cond_24
    move v5, v11

    goto :goto_14

    :cond_25
    :goto_13
    move v5, v10

    :goto_14
    if-eqz v5, :cond_26

    move v5, v15

    goto :goto_15

    :cond_26
    move v5, v11

    :goto_15
    invoke-static {v3, v5}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    invoke-virtual {v9}, Landroid/app/smartspace/SmartspaceAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getIconDrawable(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_27

    move v5, v10

    goto :goto_16

    :cond_27
    move v5, v11

    :goto_16
    iget-object v4, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    invoke-virtual {v4, v3}, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v9}, Landroid/app/smartspace/SmartspaceAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v9}, Landroid/app/smartspace/SmartspaceAction;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v6

    if-eq v6, v10, :cond_29

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_28

    goto :goto_17

    :cond_28
    move v6, v11

    goto :goto_18

    :cond_29
    :goto_17
    move v6, v10

    :goto_18
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/2addr v7, v10

    invoke-virtual {v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->updateZenVisibility()V

    if-eqz v6, :cond_2a

    goto :goto_19

    :cond_2a
    move-object v3, v4

    :goto_19
    invoke-virtual {v9}, Landroid/app/smartspace/SmartspaceAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v15

    if-eq v6, v7, :cond_2b

    if-eqz v5, :cond_2b

    goto :goto_1a

    :cond_2b
    move v10, v11

    :goto_1a
    invoke-virtual {v1, v3, v15, v10}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    if-eqz v6, :cond_2c

    if-eqz v7, :cond_2c

    goto :goto_1b

    :cond_2c
    move-object v4, v12

    :goto_1b
    invoke-virtual {v9}, Landroid/app/smartspace/SmartspaceAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v4, v3, v5}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->setSubtitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    :cond_2d
    iget-object v3, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconSubtitleView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    const/4 v10, 0x4

    if-eqz v3, :cond_32

    if-eqz v8, :cond_2f

    invoke-virtual {v8}, Landroid/app/smartspace/SmartspaceAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    if-nez v3, :cond_2e

    goto :goto_1c

    :cond_2e
    invoke-virtual {v8}, Landroid/app/smartspace/SmartspaceAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getIconDrawable(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1d

    :cond_2f
    :goto_1c
    move-object v3, v12

    :goto_1d
    iget-object v4, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    invoke-virtual {v4, v3}, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;->setIcon(Landroid/graphics/drawable/Drawable;)V

    if-nez v3, :cond_30

    iget-object v3, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconSubtitleView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-static {v3, v10}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object v3, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconSubtitleView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconSubtitleView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1f

    :cond_30
    iget-object v3, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconSubtitleView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-virtual {v8}, Landroid/app/smartspace/SmartspaceAction;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconSubtitleView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    invoke-virtual {v3, v4, v12, v12, v12}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconSubtitleView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-static {v3, v11}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    invoke-static {v8}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->getSubcardType(Landroid/app/smartspace/SmartspaceAction;)I

    move-result v3

    const/4 v4, -0x1

    const-string v15, "BcSmartspaceCard"

    if-eq v3, v4, :cond_31

    invoke-static {v13, v3}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->getClickedIndex(Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;I)I

    move-result v3

    move/from16 v18, v3

    goto :goto_1e

    :cond_31
    invoke-virtual {v13}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Landroid/app/smartspace/SmartspaceAction;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Subcard expected but missing type. loggingInfo=%s, baseAction=%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v18, v11

    :goto_1e
    iget-object v3, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconSubtitleView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iget-object v6, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mEventNotifier:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

    const-string v7, "BcSmartspaceCard"

    move-object v4, v2

    move-object v5, v8

    move-object/from16 p1, v8

    move-object v8, v13

    move-object v11, v9

    move/from16 v9, v18

    invoke-static/range {v3 .. v9}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->setOnClickListener(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Ljava/lang/String;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;I)V

    iget-object v3, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mBaseActionIconSubtitleView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-virtual/range {p1 .. p1}, Landroid/app/smartspace/SmartspaceAction;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/app/smartspace/SmartspaceAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v15, v3, v4, v5}, Lcom/google/android/systemui/smartspace/utils/ContentDescriptionUtil;->setFormattedContentDescription(Ljava/lang/String;Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_20

    :cond_32
    :goto_1f
    move-object/from16 p1, v8

    move-object v11, v9

    :goto_20
    invoke-virtual {v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->updateIconTint()V

    iget-object v3, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    if-eqz v3, :cond_35

    if-eqz v11, :cond_33

    invoke-virtual {v11}, Landroid/app/smartspace/SmartspaceAction;->getId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v9, p1

    goto :goto_21

    :cond_33
    move-object/from16 v9, p1

    if-eqz v9, :cond_34

    invoke-virtual {v9}, Landroid/app/smartspace/SmartspaceAction;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_21

    :cond_34
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_21
    new-instance v4, Landroid/app/smartspace/SmartspaceAction$Builder;

    const-string v5, "unusedTitle"

    invoke-direct {v4, v3, v5}, Landroid/app/smartspace/SmartspaceAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getOpenCalendarIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/app/smartspace/SmartspaceAction$Builder;->setIntent(Landroid/content/Intent;)Landroid/app/smartspace/SmartspaceAction$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/smartspace/SmartspaceAction$Builder;->build()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v5

    iget-object v3, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    iget-object v6, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mEventNotifier:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

    const-string v7, "BcSmartspaceCard"

    move-object v4, v2

    move-object v8, v13

    invoke-static/range {v3 .. v8}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->setOnClickListener(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Ljava/lang/String;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)V

    goto :goto_22

    :cond_35
    move-object/from16 v9, p1

    :goto_22
    if-eqz v11, :cond_37

    invoke-virtual {v11}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_36

    invoke-virtual {v11}, Landroid/app/smartspace/SmartspaceAction;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v3

    if-eqz v3, :cond_37

    :cond_36
    const/4 v5, 0x1

    goto :goto_23

    :cond_37
    const/4 v5, 0x0

    :goto_23
    if-eqz v5, :cond_39

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_38

    iget v3, v13, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mFeatureType:I

    const/16 v5, 0x27

    if-ne v3, v5, :cond_38

    invoke-static {v13, v4}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->getClickedIndex(Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;I)I

    :cond_38
    invoke-virtual {v1, v2, v11, v13}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->setPrimaryOnClickListener(Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)V

    goto :goto_25

    :cond_39
    const/4 v4, 0x1

    if-eqz v9, :cond_3a

    invoke-virtual {v9}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_3b

    invoke-virtual {v9}, Landroid/app/smartspace/SmartspaceAction;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v3

    if-eqz v3, :cond_3a

    goto :goto_24

    :cond_3a
    const/4 v4, 0x0

    :cond_3b
    :goto_24
    if-eqz v4, :cond_3c

    invoke-virtual {v1, v2, v9, v13}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->setPrimaryOnClickListener(Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)V

    goto :goto_25

    :cond_3c
    invoke-virtual {v1, v2, v11, v13}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->setPrimaryOnClickListener(Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)V

    :goto_25
    iget-object v3, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSecondaryCardGroup:Landroid/view/ViewGroup;

    if-nez v3, :cond_3d

    goto :goto_27

    :cond_3d
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-static {v2}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion;->getFeatureType(Landroid/app/smartspace/SmartspaceTarget;)I

    move-result v2

    const/4 v4, -0x2

    if-ne v2, v4, :cond_3e

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/2addr v2, v10

    iput v2, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    goto :goto_26

    :cond_3e
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    :goto_26
    iget-object v2, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mSecondaryCardGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_27
    iget v2, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->currentTextColor:I

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->setPrimaryTextColor(I)V

    iget v2, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->dozeAmount:F

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->setDozeAmount(F)V

    iget-object v2, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->dndImage:Landroid/graphics/drawable/Drawable;

    iget-object v0, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->dndDescription:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mDndImageView:Landroid/widget/ImageView;

    if-nez v3, :cond_3f

    goto :goto_29

    :cond_3f
    if-nez v2, :cond_40

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object v0, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mDndImageView:Landroid/widget/ImageView;

    invoke-static {v0, v12}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->offsetImageViewForIcon(Landroid/widget/ImageView;Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;)V

    goto :goto_28

    :cond_40
    iget-object v3, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mDndIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mDndImageView:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mDndIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mDndImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mDndImageView:Landroid/widget/ImageView;

    iget-object v2, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mDndIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    invoke-static {v0, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->offsetImageViewForIcon(Landroid/widget/ImageView;Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;)V

    iget-object v0, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mDndImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    :goto_28
    invoke-virtual {v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->updateZenVisibility()V

    :goto_29
    iget-object v0, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mNextAlarmImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_43

    iget-object v2, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mNextAlarmTextView:Landroid/widget/TextView;

    if-nez v2, :cond_41

    goto :goto_2b

    :cond_41
    iget-object v2, v14, Lcom/google/android/systemui/smartspace/BcNextAlarmData;->mImage:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_42

    const/16 v3, 0x8

    invoke-static {v0, v3}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object v0, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mNextAlarmTextView:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object v0, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mNextAlarmImageView:Landroid/widget/ImageView;

    invoke-static {v0, v12}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->offsetImageViewForIcon(Landroid/widget/ImageView;Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;)V

    goto :goto_2a

    :cond_42
    iget-object v0, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mNextAlarmIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    invoke-virtual {v0, v2}, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mNextAlarmImageView:Landroid/widget/ImageView;

    iget-object v2, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mNextAlarmIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mNextAlarmImageView:Landroid/widget/ImageView;

    iget-object v2, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mNextAlarmIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    invoke-static {v0, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->offsetImageViewForIcon(Landroid/widget/ImageView;Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;)V

    iget-object v0, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mNextAlarmImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    invoke-virtual {v14, v12}, Lcom/google/android/systemui/smartspace/BcNextAlarmData;->getDescription(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mNextAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5

    const v6, 0x7f13009d

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mNextAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mNextAlarmTextView:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object v0, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mNextAlarmImageView:Landroid/widget/ImageView;

    iget-object v2, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mEventNotifier:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

    iget-object v3, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mUiSurface:Ljava/lang/String;

    iget v4, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mDozeAmount:F

    invoke-static {v4, v3}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getLoggingDisplaySurface(FLjava/lang/String;)I

    move-result v3

    invoke-virtual {v14, v0, v12, v2, v3}, Lcom/google/android/systemui/smartspace/BcNextAlarmData;->setOnClickListener(Landroid/view/View;Landroid/app/smartspace/uitemplatedata/TapAction;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;I)V

    iget-object v0, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mNextAlarmTextView:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mEventNotifier:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

    iget-object v3, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mUiSurface:Ljava/lang/String;

    iget v4, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->mDozeAmount:F

    invoke-static {v4, v3}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getLoggingDisplaySurface(FLjava/lang/String;)I

    move-result v3

    invoke-virtual {v14, v0, v12, v2, v3}, Lcom/google/android/systemui/smartspace/BcNextAlarmData;->setOnClickListener(Landroid/view/View;Landroid/app/smartspace/uitemplatedata/TapAction;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;I)V

    :goto_2a
    invoke-virtual {v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->updateZenVisibility()V

    :cond_43
    :goto_2b
    return-void
.end method

.method public final setMediaTarget(Landroid/app/smartspace/SmartspaceTarget;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mediaTargets:Ljava/util/List;

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->updateTargetVisibility()V

    return-void
.end method

.method public final updateCurrentTextColor()V
    .locals 6

    iget v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->primaryTextColor:I

    iget v1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->dozeColor:I

    iget v2, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->dozeAmount:F

    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->currentTextColor:I

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->viewHolders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v3, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->legacyCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    if-eqz v4, :cond_1

    iget v5, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->currentTextColor:I

    invoke-virtual {v4, v5}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->setPrimaryTextColor(I)V

    iget v5, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->dozeAmount:F

    invoke-virtual {v4, v5}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->setDozeAmount(F)V

    :cond_1
    iget-object v3, v3, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->card:Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;

    if-eqz v3, :cond_2

    iget v4, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->currentTextColor:I

    invoke-virtual {v3, v4}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->setPrimaryTextColor(I)V

    iget v4, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->dozeAmount:F

    invoke-virtual {v3, v4}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->setDozeAmount(F)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final updateTargetVisibility()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->_aodTargets:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->isMediaPreferred(Ljava/util/List;)Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->_lockscreenTargets:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mediaTargets:Ljava/util/List;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->hasDifferentTargets:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->isMediaPreferred(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->keyguardBypassEnabled:Z

    if-eqz v0, :cond_2

    :goto_0
    move-object v0, v3

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    invoke-virtual {p0, v2}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->isMediaPreferred(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->keyguardBypassEnabled:Z

    if-eqz v1, :cond_3

    move-object v2, v3

    :cond_3
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->smartspaceTargets:Ljava/util/List;

    const v3, 0x3eb851ec    # 0.36f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v1, v0, :cond_7

    iget v7, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->dozeAmount:F

    cmpg-float v8, v7, v4

    if-nez v8, :cond_4

    move v8, v5

    goto :goto_2

    :cond_4
    move v8, v6

    :goto_2
    if-nez v8, :cond_6

    cmpl-float v7, v7, v3

    if-ltz v7, :cond_5

    iget-object v7, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->transitioningTo:Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    sget-object v8, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;->TO_AOD:Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    if-ne v7, v8, :cond_5

    goto :goto_3

    :cond_5
    move v7, v6

    goto :goto_4

    :cond_6
    :goto_3
    move v7, v5

    :goto_4
    if-eqz v7, :cond_7

    move v7, v5

    goto :goto_5

    :cond_7
    move v7, v6

    :goto_5
    if-eq v1, v2, :cond_b

    iget v1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->dozeAmount:F

    const/4 v8, 0x0

    cmpg-float v8, v1, v8

    if-nez v8, :cond_8

    move v8, v5

    goto :goto_6

    :cond_8
    move v8, v6

    :goto_6
    if-nez v8, :cond_a

    sub-float/2addr v4, v1

    cmpl-float v1, v4, v3

    if-ltz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->transitioningTo:Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    sget-object v3, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;->TO_LOCKSCREEN:Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    if-ne v1, v3, :cond_9

    goto :goto_7

    :cond_9
    move v1, v6

    goto :goto_8

    :cond_a
    :goto_7
    move v1, v5

    :goto_8
    if-eqz v1, :cond_b

    move v1, v5

    goto :goto_9

    :cond_b
    move v1, v6

    :goto_9
    if-nez v7, :cond_c

    if-eqz v1, :cond_e

    :cond_c
    if-eqz v7, :cond_d

    move-object v1, v0

    goto :goto_a

    :cond_d
    move-object v1, v2

    :goto_a
    iput-object v1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->smartspaceTargets:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    :cond_e
    if-eq v0, v2, :cond_f

    goto :goto_b

    :cond_f
    move v5, v6

    :goto_b
    iput-boolean v5, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->hasAodLockscreenTransition:Z

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->configProvider:Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;->isDefaultDateWeatherDisabled()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->uiSurface:Ljava/lang/String;

    const-string v1, "home"

    invoke-static {v0, v1, v6}, Lkotlin/text/StringsKt__StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->smartspaceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v6, 0x8

    :cond_10
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->root:Landroid/view/View;

    invoke-static {p0, v6}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    :cond_11
    return-void
.end method
