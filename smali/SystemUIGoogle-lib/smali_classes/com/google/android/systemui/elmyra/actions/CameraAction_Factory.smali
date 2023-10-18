.class public abstract Lcom/google/android/systemui/elmyra/actions/CameraAction_Factory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static newInstance(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;)Lcom/google/android/systemui/elmyra/actions/CameraAction;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/elmyra/actions/CameraAction;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/systemui/elmyra/actions/CameraAction;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;)V

    return-object v0
.end method
