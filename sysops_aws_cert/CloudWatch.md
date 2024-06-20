
![Cloud watch structure](/static/cloud_watch_structer_visual.png)

- It's an **umbrella service**  
    - *Collection of the monitoring tools*
    - **Logs**()
      Any custom log data, `Application Logs`,`Lambda Logs`
    - **Metrics** 
        Variable in time u wanna monitor `cpu usge` or `memory usage`
    - **Amazon Event Bridge/Cloud watch events**
        Trigger event based on the condition (*every our snapshot the  server*)
    - **Alarms**
         trigger notification based on metric which breach a defined threshold
    - **Dashboard**
        Creates the visualization  based on *metrics*
    - **Service Lens** 
        Visualize and analyze the health,performance,availability in a signed place(*smth like summery*)
    - **Container Insights**
        Logs containerized apps and *micro services* 
    - **Synthetics** 
        Test *web apps* to if they're broken
    - **Contributor insights**
        view the top contributions impacting the performance of your systems and application *in real time*


### Cloud watch integration's 
- **S3** 
    U can export logs to S3 do perform analysis
- **Security**
    By default log groups are encrypted using *SSE*
- **Log filtering**
    Logs can be filtered using [Filtering syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html)

- **Log retention**
By default **logs never expire** 
You can adjust the retention policy for  each log group(*from 1 day to 10 years*)
    
### Log groups
A collection of **log streams**.

"/test/prod/app"
"/test/prod/db"
"/test/dev/db"

### Log streams 
- *Sequence of event for the same source*

#### Cloud Watch  Logs Insights

![Cloud watch insigts](/static/cloud_watch_insights_visual.png)

Interactively search and analyze u log date with the **syntax**
    - Supports all kinds of logs 
    - Better then importing it locally and sent through [[Athena]]
- Sing request can query up to **20 log groups**
- Queries **time out after 15 minutes**
- Query  results are **available for 7 days**
 
#### Sample queries 
- Remember that aws provide a list of queries that u will usually just need 
    - All u have to do i to copy the syntax of the one u need 
      It evens create a little graph based on it 

##### Discover fields(@)
It' analyze the **log events** and try to structure the  content
by generating fields that u can use in your query 

- **Five system fields** (*automatically generated*)
    - **@message**
        Raw unparsed log event
    - **@timestamp**
    - **@ingestionTime**
        Time when the log was recived
    - **logStream** 
    the name of the log stream the event was added to 
    - **@log**
        Log group identifier

![Diffrent discover fileds](/static/diffrent_discover_fields_aws_log.png)
