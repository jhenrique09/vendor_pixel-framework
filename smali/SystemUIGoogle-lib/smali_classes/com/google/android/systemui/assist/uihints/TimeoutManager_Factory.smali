.class public abstract Lcom/google/android/systemui/assist/uihints/TimeoutManager_Factory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static newInstance(Ldagger/Lazy;)Lcom/google/android/systemui/assist/uihints/TimeoutManager;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/assist/uihints/TimeoutManager;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/uihints/TimeoutManager;-><init>(Ldagger/Lazy;)V

    return-object v0
.end method
