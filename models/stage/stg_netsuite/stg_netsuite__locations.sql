
with source as (

    select * from {{ source('raw_netsuite', 'locations') }}

),

renamed as (

    select
        address,
        address_one,
        address_three,
        address_two,
        addressee,
        attention,
        branch_id,
        city,
        country,
        date_last_modified,
        full_name,
        inventory_available,
        inventory_available_web_store,
        is_include_in_supply_planning,
        isinactive,
        location_extid,
        location_id,
        name,
        parent_id,
        phone,
        pick_up,
        return_address_one,
        return_address_two,
        return_city,
        return_country,
        return_state,
        return_zipcode,
        returnaddress,
        state,
        tran_num_prefix,
        use_bins,
        zipcode

    from source

)

select * from renamed
