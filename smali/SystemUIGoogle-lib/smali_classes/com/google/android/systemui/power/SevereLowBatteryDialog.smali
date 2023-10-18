.class public final Lcom/google/android/systemui/power/SevereLowBatteryDialog;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mIDreamManager:Landroid/service/dreams/IDreamManager;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field mSevereBatteryDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/service/dreams/IDreamManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/systemui/power/SevereLowBatteryDialog;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/google/android/systemui/power/SevereLowBatteryDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/power/SevereLowBatteryDialog;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p3, p0, Lcom/google/android/systemui/power/SevereLowBatteryDialog;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p4, p0, Lcom/google/android/systemui/power/SevereLowBatteryDialog;->mIDreamManager:Landroid/service/dreams/IDreamManager;

    return-void
.end method
