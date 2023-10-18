.class public final Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final alarmImage:Landroid/graphics/drawable/Drawable;

.field public final alarmManager:Landroid/app/AlarmManager;

.field public final context:Landroid/content/Context;

.field public final datePlugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

.field public final dndImage:Landroid/graphics/drawable/Drawable;

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final handler:Landroid/os/Handler;

.field public final nextAlarmCallback:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$nextAlarmCallback$1;

.field public final nextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field public final plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

.field public final showNextAlarm:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$showNextAlarm$1;

.field public final smartspaceViews:Ljava/util/Set;

.field public final zenModeCallback:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$zenModeCallback$1;

.field public final zenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;Lcom/android/systemui/statusbar/policy/ZenModeController;Landroid/app/AlarmManager;Lcom/android/systemui/statusbar/policy/NextAlarmController;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    iput-object p3, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->datePlugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    iput-object p4, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    iput-object p5, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->zenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iput-object p6, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->alarmManager:Landroid/app/AlarmManager;

    iput-object p7, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->nextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    iput-object p8, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->handler:Landroid/os/Handler;

    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->smartspaceViews:Ljava/util/Set;

    new-instance p2, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$showNextAlarm$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$showNextAlarm$1;-><init>(Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;)V

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->showNextAlarm:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$showNextAlarm$1;

    new-instance p2, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$zenModeCallback$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$zenModeCallback$1;-><init>(Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;)V

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->zenModeCallback:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$zenModeCallback$1;

    new-instance p2, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$nextAlarmCallback$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$nextAlarmCallback$1;-><init>(Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;)V

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->nextAlarmCallback:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$nextAlarmCallback$1;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f080afb

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->dndImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0806b4

    invoke-virtual {p1, p2, p4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->alarmImage:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static synthetic getSmartspaceViews$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final showAlarm()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->zenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserId:I

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->smartspaceViews:Ljava/util/Set;

    if-lez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0xc

    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    add-long/2addr v7, v5

    cmp-long v0, v3, v7

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->context:Landroid/content/Context;

    invoke-static {v2, v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "HH:mm"

    goto :goto_2

    :cond_2
    const-string v0, "h:mm"

    :goto_2
    invoke-static {v0, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    iget-object v3, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->alarmImage:Landroid/graphics/drawable/Drawable;

    invoke-interface {v2, v3, v0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->setNextAlarm(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->setNextAlarm(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    return-void
.end method

.method public final updateDnd()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->zenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->smartspaceViews:Ljava/util/Set;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1300b9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    iget-object v3, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->dndImage:Landroid/graphics/drawable/Drawable;

    invoke-interface {v2, v3, v0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->setDnd(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->setDnd(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final updateNextAlarm()V
    .locals 8

    iget-object v5, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->showNextAlarm:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$showNextAlarm$1;

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->zenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserId:I

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0xc

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sub-long/2addr v3, v6

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->alarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x1

    const-string v6, "lock_screen_next_alarm"

    iget-object v7, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->handler:Landroid/os/Handler;

    move-wide v2, v3

    move-object v4, v6

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->showAlarm()V

    return-void
.end method
