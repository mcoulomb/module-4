with source as (
    select * from {{ source('raw', 'fhv') }}
),

renamed as (
    select
        dispatching_base_num,
        cast(pickup_datetime as timestamp) as pickup_datetime,
        cast(dropOff_datetime as timestamp) as dropoff_datetime,
        PUlocationID as pickup_location_id,
        DOlocationID as dropoff_location_id,
        SR_Flag,
        Affiliated_base_number as affiliated_base_number
    from source
    -- Filter out records with null dispatching_base_num (data quality requirement)
    where dispatching_base_num is not null
)

select * from renamed