.class final enum Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final synthetic $VALUES:[Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

.field public static final enum EXPANDING_TO_WIDTH:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

.field public static final enum LISTENING_TO_SPEECH:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

.field public static final enum NOT_STARTED:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

.field public static final enum WAITING_FOR_ENDPOINTER:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

.field public static final enum WAITING_FOR_SPEECH:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    const-string v1, "NOT_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;->NOT_STARTED:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    new-instance v1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    const-string v2, "EXPANDING_TO_WIDTH"

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;-><init>(ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;->EXPANDING_TO_WIDTH:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    new-instance v2, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    const-string v3, "WAITING_FOR_SPEECH"

    const/4 v4, 0x2

    invoke-direct {v2, v4, v3}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;->WAITING_FOR_SPEECH:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    new-instance v3, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    const-string v4, "LISTENING_TO_SPEECH"

    const/4 v5, 0x3

    invoke-direct {v3, v5, v4}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;-><init>(ILjava/lang/String;)V

    sput-object v3, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;->LISTENING_TO_SPEECH:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    new-instance v4, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    const-string v5, "WAITING_FOR_ENDPOINTER"

    const/4 v6, 0x4

    invoke-direct {v4, v6, v5}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;->WAITING_FOR_ENDPOINTER:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;->$VALUES:[Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;
    .locals 1

    const-class v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    return-object p0
.end method

.method public static values()[Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;
    .locals 1

    sget-object v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;->$VALUES:[Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    invoke-virtual {v0}, [Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    return-object v0
.end method
