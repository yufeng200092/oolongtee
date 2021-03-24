package cn.yf126.decision_core;

import cn.yf126.decision_core.code_object.CodePattern;

import java.util.HashMap;
import java.util.List;

public interface DecisionExecutor {
    /**
     * execute the decision
     *
     * @param codes a collection of codePattern to execute
     * @return a map represents the results of the execution
     */
    HashMap<String, String> execute(List<CodePattern> codes);
}
