.class public final Lcom/google/android/systemui/power/ExtremeLowBatteryNotification;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final mContext:Landroid/content/Context;

.field mNotificationManager:Landroid/app/NotificationManager;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/power/ExtremeLowBatteryNotification;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/power/ExtremeLowBatteryNotification;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const-class p2, Landroid/app/NotificationManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/google/android/systemui/power/ExtremeLowBatteryNotification;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method
