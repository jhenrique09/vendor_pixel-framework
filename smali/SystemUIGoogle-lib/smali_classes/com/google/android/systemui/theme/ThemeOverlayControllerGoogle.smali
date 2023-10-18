.class public final Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;
.super Lcom/android/systemui/theme/ThemeOverlayController;
.source ""


# instance fields
.field public final context:Landroid/content/Context;

.field public final resources:Landroid/content/res/Resources;

.field public final systemProperties:Lcom/android/systemui/flags/SystemPropertiesHelper;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/theme/ThemeOverlayApplier;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/flags/SystemPropertiesHelper;Landroid/content/res/Resources;Landroid/app/WallpaperManager;Landroid/os/UserManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Landroid/app/UiModeManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 17

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v14, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v12, p12

    move-object/from16 v10, p13

    move-object/from16 v11, p14

    move-object/from16 v13, p15

    move-object/from16 v15, p16

    move-object/from16 v16, p17

    invoke-direct/range {v0 .. v16}, Lcom/android/systemui/theme/ThemeOverlayController;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/theme/ThemeOverlayApplier;Lcom/android/systemui/util/settings/SecureSettings;Landroid/app/WallpaperManager;Landroid/os/UserManager;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/flags/FeatureFlags;Landroid/content/res/Resources;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Landroid/app/UiModeManager;)V

    iput-object v1, v0, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;->context:Landroid/content/Context;

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;->systemProperties:Lcom/android/systemui/flags/SystemPropertiesHelper;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;->resources:Landroid/content/res/Resources;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;->userTracker:Lcom/android/systemui/settings/UserTracker;

    new-instance v1, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle$configurationChangedListener$1;

    invoke-direct {v1, v0}, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle$configurationChangedListener$1;-><init>(Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;)V

    move-object/from16 v2, p18

    check-cast v2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;->getBootColors()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Boot animation colors "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ThemeOverlayController"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/systemui/theme/ThemeOverlayController;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string p0, "ThemeOverlayControllerGoogle: yes"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getBootColors()[I
    .locals 5

    const v0, 0x106003e

    iget-object v1, p0, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    if-ne v2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;->resources:Landroid/content/res/Resources;

    if-eqz v0, :cond_1

    const v0, 0x7f06049e

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    const v2, 0x7f0604a4

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    const v3, 0x7f0604a0

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    const v4, 0x7f0604a2

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    filled-new-array {v0, v2, v3, p0}, [I

    move-result-object p0

    goto :goto_1

    :cond_1
    const v0, 0x7f06049d

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    const v2, 0x7f0604a3

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    const v3, 0x7f06049f

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    const v4, 0x7f0604a1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    filled-new-array {v0, v2, v3, p0}, [I

    move-result-object p0

    :goto_1
    return-object p0
.end method
