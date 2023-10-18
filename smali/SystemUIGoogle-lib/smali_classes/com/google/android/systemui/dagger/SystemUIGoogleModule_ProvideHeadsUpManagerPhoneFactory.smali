.class public abstract Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideHeadsUpManagerPhoneFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideHeadsUpManagerPhone(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/shade/ShadeExpansionStateManager;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;
    .locals 13

    new-instance v12, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/shade/ShadeExpansionStateManager;)V

    return-object v12
.end method
