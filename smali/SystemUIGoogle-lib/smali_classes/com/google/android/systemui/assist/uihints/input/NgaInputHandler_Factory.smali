.class public abstract Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler_Factory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static newInstance(Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;Ljava/util/Set;Ljava/util/Set;)Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;-><init>(Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method
