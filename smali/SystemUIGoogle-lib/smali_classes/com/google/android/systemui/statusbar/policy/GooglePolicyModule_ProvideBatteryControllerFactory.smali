.class public abstract Lcom/google/android/systemui/statusbar/policy/GooglePolicyModule_ProvideBatteryControllerFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideBatteryController(Landroid/content/Context;Lcom/android/systemui/power/EnhancedEstimates;Landroid/os/PowerManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/dump/DumpManager;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/systemui/settings/UserTracker;Lcom/google/android/systemui/reversecharging/ReverseChargingController;)Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;
    .locals 12

    new-instance v11, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;-><init>(Landroid/content/Context;Lcom/android/systemui/power/EnhancedEstimates;Landroid/os/PowerManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/dump/DumpManager;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/systemui/settings/UserTracker;Lcom/google/android/systemui/reversecharging/ReverseChargingController;)V

    invoke-virtual {v11}, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->init()V

    return-object v11
.end method
