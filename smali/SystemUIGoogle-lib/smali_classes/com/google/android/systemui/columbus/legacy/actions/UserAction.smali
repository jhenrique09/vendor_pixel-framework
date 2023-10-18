.class public abstract Lcom/google/android/systemui/columbus/legacy/actions/UserAction;
.super Lcom/google/android/systemui/columbus/legacy/actions/Action;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/columbus/legacy/actions/Action;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public availableOnLockscreen()Z
    .locals 0

    instance-of p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    return p0
.end method

.method public availableOnScreenOff()Z
    .locals 0

    instance-of p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchOpa;

    return p0
.end method
