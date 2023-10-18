.class public final Lcom/google/android/systemui/smartspace/KeyguardSmartspaceStartable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final initializationChecker:Lcom/android/systemui/util/InitializationChecker;

.field public final mediaController:Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;

.field public final zenController:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;Lcom/android/systemui/util/InitializationChecker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardSmartspaceStartable;->zenController:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/KeyguardSmartspaceStartable;->mediaController:Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;

    iput-object p3, p0, Lcom/google/android/systemui/smartspace/KeyguardSmartspaceStartable;->initializationChecker:Lcom/android/systemui/util/InitializationChecker;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/KeyguardSmartspaceStartable;->initializationChecker:Lcom/android/systemui/util/InitializationChecker;

    invoke-virtual {v0}, Lcom/android/systemui/util/InitializationChecker;->initializeComponents()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/KeyguardSmartspaceStartable;->zenController:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/flags/Flags;->SMARTSPACE_DATE_WEATHER_DECOUPLED:Lcom/android/systemui/flags/SysPropBooleanFlag;

    iget-object v2, v0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    check-cast v2, Lcom/android/systemui/flags/FeatureFlagsRelease;

    invoke-virtual {v2, v1}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/SysPropBooleanFlag;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->datePlugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    :goto_0
    new-instance v2, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$init$1;

    invoke-direct {v2, v0}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$init$1;-><init>(Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->updateNextAlarm()V

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardSmartspaceStartable;->mediaController:Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$init$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$init$1;-><init>(Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;)V

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method
