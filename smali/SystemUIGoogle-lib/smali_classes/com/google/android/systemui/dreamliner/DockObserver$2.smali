.class public final Lcom/google/android/systemui/dreamliner/DockObserver$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "DLObserver"

    return-object p0
.end method

.method public final suppressInterruptions()Z
    .locals 0

    sget-boolean p0, Lcom/google/android/systemui/dreamliner/DockObserver;->sIsDockingUiShowing:Z

    return p0
.end method
