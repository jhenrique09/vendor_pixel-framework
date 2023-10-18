.class public final Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $tag:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->$r8$classId:I

    const-string v0, "updateAvailableAppsAndShortcutsAsync"

    iput-object v0, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->$tag:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->$tag:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    iget-object v1, v0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->$tag:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "getMainActivityLaunchIntent component="

    const-string v8, " not unlocked"

    const-string v9, "Columbus/LaunchApp"

    const-string v10, "systemui_google_quick_tap_is_source"

    const-string v11, "Did not update apps and shortcuts, user "

    if-eqz v4, :cond_5

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iget-object v4, v0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    iget-object v4, v4, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->userManager:Landroid/os/UserManager;

    invoke-virtual {v4, v1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    iget-object v4, v4, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->availableApps:Ljava/util/Map;

    check-cast v4, Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v4, v0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    iget-object v4, v4, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->availableShortcuts:Ljava/util/Map;

    check-cast v4, Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v4, v0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    iget-object v4, v4, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->launcherApps:Landroid/content/pm/LauncherApps;

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    iget-object v8, v0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    invoke-static {v8, v1}, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->access$getAllShortcutsForUser(Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v9}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-static {v2, v3, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v11, v0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    iget-object v11, v11, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->launcherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v9}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v13

    invoke-virtual {v11, v12, v6, v13}, Landroid/content/pm/LauncherApps;->getMainActivityLaunchIntent(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    if-eqz v11, :cond_0

    new-instance v14, Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-direct {v14, v11}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v14, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v11, v0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    iget-object v11, v11, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->availableApps:Ljava/util/Map;

    invoke-virtual {v9}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v15

    iget-object v12, v0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    iget-object v13, v12, Lcom/google/android/systemui/columbus/legacy/actions/Action;->context:Landroid/content/Context;

    const/16 v16, 0x0

    const/high16 v17, 0x4000000

    const/16 v18, 0x0

    iget-object v12, v12, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v12, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v12}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v19

    move-object v12, v13

    move/from16 v13, v16

    move-object v5, v15

    move/from16 v15, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    invoke-static/range {v12 .. v17}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-interface {v11, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    invoke-static {v5, v9, v8}, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->access$addShortcutsForApp(Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;Landroid/content/pm/LauncherActivityInfo;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :catch_0
    :cond_0
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :cond_1
    :try_start_3
    iget-object v5, v0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    iget-object v5, v5, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->launcherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v9}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v12

    invoke-virtual {v5, v11, v6, v12}, Landroid/content/pm/LauncherApps;->getMainActivityLaunchIntent(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v5

    if-eqz v5, :cond_2

    new-instance v13, Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {v13, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v5, 0x1

    invoke-virtual {v13, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v5, v0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    iget-object v5, v5, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->availableApps:Ljava/util/Map;

    invoke-virtual {v9}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v15

    iget-object v11, v0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    iget-object v12, v11, Lcom/google/android/systemui/columbus/legacy/actions/Action;->context:Landroid/content/Context;

    const/4 v14, 0x0

    const/high16 v16, 0x4000000

    const/16 v17, 0x0

    iget-object v11, v11, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v11, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v11}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v18

    move-object v11, v12

    move v12, v14

    move/from16 v14, v16

    move-object v6, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    invoke-static/range {v11 .. v16}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-interface {v5, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    invoke-static {v5, v9, v8}, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->access$addShortcutsForApp(Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;Landroid/content/pm/LauncherActivityInfo;Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_1
    :cond_2
    :goto_2
    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_3
    :try_start_4
    iget-object v0, v0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    iget-object v1, v0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->mainHandler:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1$2;

    invoke-direct {v4, v0}, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1$2;-><init>(Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_5
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iget-object v4, v0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    iget-object v4, v4, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->userManager:Landroid/os/UserManager;

    invoke-virtual {v4, v1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    iget-object v4, v4, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->availableApps:Ljava/util/Map;

    check-cast v4, Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v4, v0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    iget-object v4, v4, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->availableShortcuts:Ljava/util/Map;

    check-cast v4, Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v4, v0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    iget-object v4, v4, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->launcherApps:Landroid/content/pm/LauncherApps;

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    invoke-static {v5, v1}, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->access$getAllShortcutsForUser(Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :catch_2
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v6}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {v2, v3, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_5
    iget-object v8, v0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    iget-object v8, v8, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->launcherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v6}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v12, v11}, Landroid/content/pm/LauncherApps;->getMainActivityLaunchIntent(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    if-eqz v8, :cond_6

    new-instance v15, Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-direct {v15, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v8, 0x1

    invoke-virtual {v15, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v8, v0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    iget-object v8, v8, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->availableApps:Ljava/util/Map;

    invoke-virtual {v6}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    iget-object v11, v0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    iget-object v13, v11, Lcom/google/android/systemui/columbus/legacy/actions/Action;->context:Landroid/content/Context;

    const/4 v14, 0x0

    const/high16 v16, 0x4000000

    const/16 v17, 0x0

    iget-object v11, v11, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v11, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v11}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v18

    invoke-static/range {v13 .. v18}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-interface {v8, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    invoke-static {v8, v6, v5}, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->access$addShortcutsForApp(Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;Landroid/content/pm/LauncherActivityInfo;Ljava/util/List;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :catch_3
    :cond_6
    :goto_5
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_6

    :cond_7
    :try_start_6
    iget-object v8, v0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    iget-object v8, v8, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->launcherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v6}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v11
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    const/4 v12, 0x0

    :try_start_7
    invoke-virtual {v8, v9, v12, v11}, Landroid/content/pm/LauncherApps;->getMainActivityLaunchIntent(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    if-eqz v8, :cond_8

    new-instance v15, Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-direct {v15, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4

    const/4 v8, 0x1

    :try_start_8
    invoke-virtual {v15, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v9, v0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    iget-object v9, v9, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->availableApps:Ljava/util/Map;

    invoke-virtual {v6}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    iget-object v13, v0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    iget-object v14, v13, Lcom/google/android/systemui/columbus/legacy/actions/Action;->context:Landroid/content/Context;

    const/16 v16, 0x0

    const/high16 v17, 0x4000000

    const/16 v18, 0x0

    iget-object v13, v13, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v13, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v13}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v19

    move-object v13, v14

    move/from16 v14, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    invoke-static/range {v13 .. v18}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-interface {v9, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    invoke-static {v9, v6, v5}, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->access$addShortcutsForApp(Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;Landroid/content/pm/LauncherActivityInfo;Ljava/util/List;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_4

    :catch_4
    :cond_8
    const/4 v8, 0x1

    goto/16 :goto_4

    :catch_5
    :goto_6
    const/4 v8, 0x1

    const/4 v12, 0x0

    goto/16 :goto_4

    :cond_9
    iget-object v0, v0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    iget-object v1, v0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1$2;

    invoke-direct {v2, v0}, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1$2;-><init>(Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    return-void

    :goto_8
    iget-object v1, v0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    iget-object v1, v1, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;->$tag:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const v2, 0x7f130247

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setKeyguardMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
